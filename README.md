# Example of GitHub Actions CI/CD Using Docker Containers, Semantic-Release, and DockerHub Release

![GitHub Release Date - Published_At](https://img.shields.io/github/release-date/johnny-knighten/example-github-actions-for-container-release?logo=github&link=https%3A%2F%2Fgithub.com%2FJohnny-Knighten%2Fexample-github-actions-for-container-release)
![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/johnny-knighten/example-github-actions-for-container-release/build-and-test.yml?logo=github&label=build%20and%20test%20-%20status)
![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/johnny-knighten/example-github-actions-for-container-release/release.yml?logo=github&label=release%20-%20status)
![GitHub Repo stars](https://img.shields.io/github/stars/johnny-knighten/example-github-actions-for-container-release?logo=github)
![GitHub](https://img.shields.io/github/license/Johnny-Knighten/example-github-actions-for-container-release?logo=github)

![Docker Image Version (latest semver)](https://img.shields.io/docker/v/johnnyknighten/example-github-actions-for-container-release?logo=docker&label=dockerhub%20-%20latest)

This repo is an example of using GitHub Actions for CI/CD using the following technologies:
* [Docker](https://www.docker.com/)
* [semantic-release](https://github.com/semantic-release/semantic-release)
* [Docker Hub](https://hub.docker.com/)

## About The Container Image Created

The container image created in this repo is just for demonstrations purposes and serves no other use. It is based on the [`ubuntu:22.04`](https://hub.docker.com/layers/library/ubuntu/22.04/images/sha256-ffa841e85005182836d91f7abd24ec081f3910716096955dcc1874b8017b96c9?context=explore) image and simply installs [nano](https://www.nano-editor.org/). Also it copies test_content.txt into the image and inserts some data into the file; this is just for testing purposes and is used in the build and test workflow.

## Branch Setup

There are two primary branches in this repo `main` and `next`. The `main` branch is the stable release branch and the `next` branch is the prerelease branch. Emergency fixes and sometime small features can be PR merged into `main`, but all other features should be PR merged into `next`. The `next` branch is merged into `main` when a new stable release is ready.

Both branches are protected with branch rules that prevent direct pushes and require PRs to add new commits to those branches. 

Note - Due to these limitations semantic-release cannot push the new release commit to the `main` or `next` branches. To get around this limitation we will introduce a `GH_TOKEN_SEMANTIC_RELEASE` secret that contains a GitHub Personal Access Token with the `repo` scope. This token will be used by semantic-release to push the new release commit to the `main` or `next` branch. This should only be done in an environment where you can trust all developers/contributors. 

See here for details about the workaround used: https://github.com/semantic-release/git/issues/196#issuecomment-702839100.
See here for how to approach it using a GitHub App: https://github.com/semantic-release/github/issues/175#issuecomment-1489689561

## Releases

Releases on `main` will be tagged with a release semver(example 1.0.0), those on `next` will have a prerelease semver tag(example 1.0.0-next.1). These tags are used in both the GitHub Release and DockerHub Release. The newest release on `main` will be tagged as `latest` on DockerHub.

## Workflow

1. On PR request `open`, `reopened`, and `synchronize` events
    * See [build-and-test.yml](./.github/workflows/build-and-test.yml)
    * Build and test the docker image
      * All these build/tests jobs must pass before a PR can be merged

2. On `push` to `main` or `next` branches
    * Since these branches are protected, this will only happen when a PR is merged
    * See [release.yml](./.github/workflows/release.yml)
    * Performs:
      * Create GitHub Release via semantic-release
      * Push new Docker images to DockerHub
      * Update description on DockerHub

## Local Execution

All contained GitHub Actions workflows are designed for local execution using [nektos/act](https://github.com/nektos/act).

See [./test-ci/README.md](./test-ci/README.md) for details on how to use and test these workflows locally.

## DockerHub

Go here to see the test docker container built by this CI/CD example: https://hub.docker.com/repository/docker/johnnyknighten/example-github-actions-for-container-release.

## Contribute

If you have any questions, comments, or suggestions please feel free to open an issue or PR. I don't plan on spending too much effort on this repo, it was mainly made as a experimenting repo for myself when I was switching from Gitlab CI/CD to GitHub Actions. I decided to make this a public repo so others could have a good reference and starting point for their own GitHub Actions CI/CD setup. Regardless I will try to respond to any issues or PRs in a timely manner and ensure the repo is still up to date as GitHub Actions is updated.
