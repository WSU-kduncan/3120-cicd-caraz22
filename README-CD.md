# Documentation
## Part 1 - Semantic Versioning
### CD Project Overview
* The goal of this project is to learn how to use `git tag` for semantic versioning and to keep production up to date using `webhook`s.
### How to generate a `tag` in `git`/Github
* To generate a tag for Github, you want to use the following command: `git tag -a v<major>.<minor>.<patch> -m "version <major>.<minor>.<patch>"`
* To push it and activate your workflow, you want to use the following command: `git push origin v<major>.<minor>.<patch>`
### Behavior of GitHub workflow
* My GitHub workflow creates an image with a specified version and pushes it to my Docker Hub repository. It is triggered by the two commands above. A tag must be created and pushed to the GitHub repository.
### Link to Docker Hub repository
* [My DockerHub repo](https://hub.docker.com/repository/docker/caraz22/3120-proj4/general")