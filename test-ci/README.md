# Running Github Actions locally

I highly suggest running Github Actions workflows/actions/jobs/steps locally before pushing them to Github.  This can help you avoid having to push to Github multiple times to get your actions working as expected. Or from having to create a branch specifically for CI development before squashing and merging into your default/release branch.

It is handy for just running basic tasks that are part of our ci/cd locally (building/linting/testing). Since everything is container based you don't have to cluster your machine with tons of tech stacks and tools.

## Required Dependencies

We will use [nektos/act](https://github.com/nektos/act) to run Github actions locally which requires Docker to be installed on your machine.

Details here:
* [Docker](https://docs.docker.com/get-docker/)
* [nektos/act](https://github.com/nektos/act)

Act will pull images that are compatible with the ones referenced in our Github Actions and then use  them to execute Github Action workflows/actions/jobs/steps locally. You can also run your own custom images if needed, see [here](https://nektosact.com/usage/runners.html).

## Modifications Made To Ensure Actions Are Testable Via `Nektos/Act`

We had to make some modifications to our GitHub Actions to overcome some limitations of `Nektos/Act`. These modifications are only required if you want to test your actions locally. They are not required for the actions to run on GitHub.

### No Support For `actions/cache`

`Nektos/Act` does not directly support the [actions/cache](https://github.com/actions/cache) action. To get around this issue we will need to do a couple things:
1. On every actions/cache action we will need to add `if: ${{ !env.ACT }}`
    * This will prevent the actions/cache action from running when we are testing locally
    * Nektos/Act injects an environment variable  `ACT`, so we can use it as an easy flag to determine local testing
2. Related to above, every `actions/cache` step needs to have the same `name:`
    * To make this flexible we will use this snippet:
      * `- name: ${{ env.ACT || 'Pull Cached Docker layers' }}`
      * Again we use the `ACT` environment variable to name the step if running locally
3. We add the `--reuse` flags to the act command
    * `--reuse` will reuse the same container for each action
    * This effectively gets us the same effect as using a cache

The major downside to this is the `--reuse` flag will cause containers to not be automatically deleted between runs. You will need to periodically clean these up if your executing a lot of actions locally.

Note - Here is the [issue](https://github.com/nektos/act/issues/285#issuecomment-987550101) that detailed using `--reuse` as a workaround for cache.

### When Testing Locally We Do not Want Some Actions To Actually Run

We don't want some actions to actually run when we are testing locally because of the side effects they  cause. For example, we don't want to actually publish a docker image to DockerHub when we are testing locally. Another example is we do not want to perform an actual GitHub release when using semantic-release.

To workaround this we:

1. Add `if: ${{ !env.ACT }}` to any action/job/ste that only should run on GitHub   
2. Add `if: ${{ env.ACT }}` to any action/job/step should only run locally and not on GitHub 
    * What you do during these action/job/step depends on your end goal
      * For example:
        * semantic-release has a dry run flag, so we just need to pass that flag
        * docker/build-push-action@v3 does not have a dry run flag, so we just echo a message about generated tags

## Available Local Executions and Tests

### Execution & Test - Docker Build/Lint/Test

Based on any `push` event, see [./.github/workflows/docker-build-and-test.yml](./.github/workflows/docker-build-and-test.yml)

```bash
act push --reuse
```

### Test - Semantic Release 

In general we will never want to run semantic-release locally. It is only configured to run on the `main` and `next` branches. But we can test it locally if we want to by setting the `RELEASE_DRY_RUN` environment variable to `true`.


#### Event Files

The [semantic-release-versioning workflow](.github/workflows/semantic-release-verionsing.yml) will only run after the docker-build-and-test workflow is launched on the `main` branch. It contains two primary jobs that are dependent on if the docker-build-and-test workflow was successful or not.

To simulate the success/failure of the docker-build-and-test workflow we will create some event files, which are JSON files that mimic the event payload that GitHub sends to the workflow. These files are located in the [test-ci/events](./test-ci/events) directory.

They look like this:
```json
{
  "workflow_run": {
    "conclusion": "success"
  },
  "ref": "main"
}
```

#### Required Secrets

The semantic-release-versioning workflow requires a few secrets to be set. 

##### GitHub Secrets

When the Workflows actually executed on GitHub a Token is injected automatically as the `GITHUB_TOKEN` environment variable. We have a couple of options to supply the secrets when running locally:

* Use Github CLI To Generate a Toke
  * `act -s GITHUB_TOKEN="$(gh auth token)"`
* Make A Personal Access Token And Inject It (Not Recommended Due To Exposing Token In Shell History)
  * `act -s GITHUB_TOKEN=[insert token or leave blank and omit equals for secure input]`
* Create a secrets file and inject it

##### DockerHub Secrets

On the DockerHub side of things we will need a username (`DOCKERHUB_USERNAME`) and a Personal Access Token (`DOCKERHUB_TOKEN`).

For these I 100% recommend creating a secrets file and injecting it. This will prevent you from having to expose your secrets in your shell history.


##### Secrets File

Nektos/Act uses Ruby's gem dotenv format through godotenv library. Here is a template to follow to setup all required secrets (name the file something like `my.secrets`):

```
export DOCKERHUB_USERNAME=USERNAME
DOCKERHUB_TOKEN=TOKEN
GITHUB_TOKEN=TOKEN
```
**Remember - NEVER commit your secrets file. Although normally I would suggest adding something like `*.secrets` to your `.gitignore`; however, this seems to prevent act from reading from the file.**


#### Test 1 - After Previous Workflow Success on Main Branch

```bash
act workflow_run -e ./test-ci/events/failued-docker-build-test-main-branch.json --secret-file ./test-ci/my.secrets  --env RELEASE_DRY_RUN=true --reuse
```

#### Test 2 - After Previous Workflow Failure on Main Branch

```bash
act workflow_run -e ./test-ci/events/success-docker-build-test-main-branch.json --secret-file ./test-ci/my.secrets  --env RELEASE_DRY_RUN=true --reuse
```
