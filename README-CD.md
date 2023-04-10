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
* [My DockerHub repo](https://hub.docker.com/repository/docker/caraz22/3120-proj4/general)  
---  
## Part 2 - Deployment
### How to install Docker to your instance
* I used three commands to install Docker on my AWS instance:
```bash
sudo apt install docker.io -y

sudo service docker start

sudo usermod -a -G docker ubuntu
```
* The first one is to install docker, with `-y` just to save some time.  
* The second one is to start docker up after the install.  
* The third one is to add the user ubuntu the docker group so that you don't need to use `sudo` for every docker command.
### Container restart script
* Justification and description of what it does
* Where it should be on server (if someone were to use your setup)
### Setting up `webhook` on the server
* How to install adnah's `webhook` to the server
* How to start the webhook  
    * since our instance's reboot, we need to handle this
### How to configure GitHub OR DockerHub to message the listener
* 
### RECORD your whole workflow process - from `commit` and `push` to your server getting a fresh image
* 