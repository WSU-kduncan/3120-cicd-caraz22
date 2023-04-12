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
* My container restart script's purpose is to pull from my DockerHub repo, stop and remove any running containers, remove any dangling images (images that are not tagged), and then run the latest version of the container from my DockerHub repo.
* It is located in my /var/scripts folder.
### Setting up `webhook` on the server
* To install adnah's `webhook` to the server, use the following command: 
```
sudo apt-get install webhook
```
This will install the community packaged version.
* To start the webhook, use the following command:  
```
webhook -hooks hook-config.yaml -verbose
```
This will only work after configuring your webhook config file, more on that below.
### `webhook` task definition file
* My config is a yaml file. It gives the path to the container restart script and the path to itself. It also gives itself an id that my GitHub action workflow can refer to.
* It is located in my /var/webhook folder.
### How to configure GitHub OR DockerHub to message the listener
* I edited my GitHub action workflow. I added a new job, `redeploy`. I used the similar layout as the `build_and_push` job, where it has what it runs on and steps. It does have a `needs` dependency on the `build_and_push` job, and I also created a new secret for my webhook URL. The most important part was adding `joelwmale/webhook-action@master`, which signals the listener, the running webhook.
### RECORD your whole workflow process - from `commit` and `push` to your server getting a fresh image
* 