# Testing GitHub Actions CI/CD For Docker Containers, Semantic-Release, and DockerHub Release

This repo is made to test out GitHub Actions CI/CD for Docker Containers, Semantic-Release, and DockerHub Release.

Steps:
1. On PR request `open`, `reopened`, and `synchronize` events
  * Build and test the docker image
2. On `push` to `main` or `next` branches
  * Create GitHub Release via Semantic-Release
  * Push new Docker images to DockerHub
  * Update description on DockerHub
