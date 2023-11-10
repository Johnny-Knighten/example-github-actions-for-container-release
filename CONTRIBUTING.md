# Contributing to example-github-actions-for-container-release

We want to make contributing to this project as easy and transparent as possible, whether it's:

- Reporting a bug
- Discussing the current state of the code
- Submitting a fix
- Proposing new features
- Becoming a maintainer

## We Develop with Github

GitHub is used for all project activities. It is use to to host code, track issues and feature requests, as well as managing pull requests.

## We Use Github Flow, So All Code Changes Happen Through Pull Requests

Pull requests are the best way to propose changes to the codebase.

1. Create your branch from the `next` branch
2. If you've added code that should be tested, add tests
3. Ensure the test suite passes
    * Run our CI/CD actions locally using [nektos/act](https://github.com/nektos/act)
4. Make sure your code lints
5. Update any related documentation
6. Issue that pull request with the merge target as `next`

To ensure automatic CHANGELOG generation via semantic-release we will not rebase or use squash-commits when accepting PRs. We will rely on merge commits to preserve the commit history, even those they do clutter history. We have branch rules in place to prevent force pushes to `main` and `next` branches. It is recommended to do an interactive rebase before merging your PR to `next` to clean up your commit history. If you force push into your own (non-protected) branch to cleanup its history while in PR review, make sure to inform all assigned reviewers.

## We Use Github Actions for CI/CD

There are workflows that runs on all opened PRs, and all pushes to `main` and `next` (when a PR is merged). See [build-and-test.yml](./.github/workflows/build-and-test.yml) and [release.yml](./.github/workflows/release.yml) for details.

All jobs in the [build-and-test.yml](./.github/workflows/build-and-test.yml) must pass before a PR will be accepted.

## Report bugs using Github Issues

We use GitHub issues to track all public bugs. Report a bug by [opening a new bug issue](https://github.com/Johnny-Knighten/example-github-actions-for-container-release/issues/new?assignees=Johnny-Knighten&labels=bug&projects=&template=bug-report.md&title=%7BBUG%7D).

## Use a Consistent Coding Style

* 2 spaces for indentation rather than tabs
* Lint you code when possible
  * [Hadolint](https://github.com/hadolint/hadolint) for Dockerfiles
  * [Actionlint](https://github.com/rhysd/actionlint) for GitHub Actions

## Commit Messages

We use the [Conventional Commits](https://www.conventionalcommits.org/) specification for our commit messages. This allows semantic-release to automatically detect version changes and generate changelogs.

The commit message should be structured as follows:
```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```
The `<type>` and `<description>` fields are mandatory, the `scope` of the commit is optional.

Example of a commit message:
```
feat(database): add 'comments' option
```

This example indicates that a feature (feat) was added to the 'database' scope of the project.

The two main primary types used to increment the semver are `fix:` and `feat`, but some others to consider are `build:`, `chore:`, `ci:`, `docs:`, `style:`, `refactor:`, `perf:`, and `test:`.

## License

By contributing, you agree that your contributions will be licensed under its [MIT License](LICENSE).

In short, when you submit code changes, your submissions are understood to be under the same [MIT License](LICENSE) that covers the project. Feel free to contact the maintainers if that's a concern.

## References

This document was adapted from the open-source contribution guidelines for [Facebook's Draft](https://github.com/facebook/draft-js/blob/master/CONTRIBUTING.md).
