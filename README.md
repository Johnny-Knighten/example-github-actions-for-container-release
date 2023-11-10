# Example of GitHub Actions CI/CD Using Docker Containers, Semantic-Release, and DockerHub Release

![GitHub Release Date - Published_At](https://img.shields.io/github/release-date/johnny-knighten/example-github-actions-for-container-release?logo=github&link=https%3A%2F%2Fgithub.com%2FJohnny-Knighten%2Fexample-github-actions-for-container-release)
![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/johnny-knighten/example-github-actions-for-container-release/build-and-test.yml?logo=github&label=build%20and%20test%20-%20status)
![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/johnny-knighten/example-github-actions-for-container-release/release.yml?logo=github&label=release%20-%20status)
![GitHub Repo stars](https://img.shields.io/github/stars/johnny-knighten/example-github-actions-for-container-release?logo=github)
![GitHub](https://img.shields.io/github/license/johnny-knighten/example-github-actions-for-container-release?logo=github)

![Docker Image Version (latest semver)](https://img.shields.io/docker/v/johnnyknighten/example-github-actions-for-container-release?logo=docker&label=dockerhub%20-%20latest)

This repo is an example of using GitHub Actions for CI/CD with the following technologies:
* Docker Containers
* Semantic-Release
* DockerHub Release.

## Branch Setup

There are two primary branches in this repo `main` and `next`. The `main` branch is the stable release branch and the `next` branch is the prerelease branch. Emergency fixes and sometime small features can bE PR merged into `main`, but all other features should be PR merged into `next`. The `next` branch is merged into `main` when a new release is ready.

Both branches are protected with branch rules that prevent direct pushes and require PRs to add new commits to those branches. All PRs must be reviewed and approved by at least one other person before they can be merged and have all statuses pass.

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
      * Create GitHub Release via Semantic-Release
      * Push new Docker images to DockerHub
      * Update description on DockerHub

## Local Execution

All GitHub Actions workflows are designed for local execution using [nektos/act](https://github.com/nektos/act).

See [./test-ci/README.md](./test-ci/README.md) for details on how to test these workflows locally.

## DockerHub

Go here to see the test container built by this CI/CD example: https://hub.docker.com/repository/docker/johnnyknighten/test.

## Contribute

If you have any questions, comments, or suggestions please feel free to open an issue or PR. I don't plan on spending too much effort on this repo, it was mainly made as a experimenting repo I made for myself when I was switching from Gitlab CI/CD to GitHub Actions. I decided to make this a public repo so others could have a good reference and starting point for their own GitHub Actions CI/CD setup. Regardless I will try to respond to any issues or PRs in a timely manner and ensure the repo is still up to date as GitHub Actions is updated.
