# Contributing to [Project Name]

We love your input! We want to make contributing to this project as easy and transparent as possible, whether it's:

- Reporting a bug
- Discussing the current state of the code
- Submitting a fix
- Proposing new features
- Becoming a maintainer

## We Develop with Github

We use GitHub to host code, track issues and feature requests, as well as accept pull requests.

## We Use Github Flow, So All Code Changes Happen Through Pull Requests

Pull requests are the best way to propose changes to the codebase. We actively welcome your pull requests:

1. Fork the repo and create your branch from `next`.
2. If you've added code that should be tested, add tests.
3. Ensure the test suite passes.
4. Make sure your code lints.
5. Update any related documentation
6. Issue that pull request!

## We use Github Actions for CI/CD

We have a workflow that runs on all PRs and pushes to `main` and `next`. See [build-and-test.yml](./.github/workflows/build-and-test.yml) and [release.yml](./.github/workflows/release.yml) for details.

## Report bugs using Github Issues

We use GitHub issues to track public bugs. Report a bug by [opening a new issue](NEW_ISSUE_LINK); it's that easy!

## Write Bug Reports with Detail, Background, and Sample Code

Use the Bug Report issue template to report a bug.

Although you should use the supplied issue template, great bug reports tend to have:

- A quick summary and/or background
- Steps to reproduce
  - Be specific!
  - Give sample code if you can.
- What you expected would happen
- What actually happens
- Notes (possibly including why you think this might be happening, or stuff you tried that didn't work)

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

## License

By contributing, you agree that your contributions will be licensed under its [MIT License](LICENSE).

#Any contributions you make will be under the same [License](LICENSE)

In short, when you submit code changes, your submissions are understood to be under the same [MIT License](LICENSE) that covers the project. Feel free to contact the maintainers if that's a concern.

## References

This document was adapted from the open-source contribution guidelines for [Facebook's Draft](https://github.com/facebook/draft-js/blob/master/CONTRIBUTING.md).
