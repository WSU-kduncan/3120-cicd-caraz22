# Documentation
## Part 1 - Dockerize it
### CI Project Overview
* The goal of this project is to use Docker to create a container image and control it using DockerHub and GitHub actions.
### Run project locally  
* To install Docker, you first need to download a couple of things. There is a [great guide online](https://www.omgubuntu.co.uk/how-to-install-wsl2-on-windows-10) with download links for multiple versions of WSL 2. The site also has a download link for Ubuntu 20.04. After that, you should be able to open up Ubuntu on a terminal. Next, you want to install Docker Desktop, version relative to your OS. Now, you should be able to use docker commands on your WSL2 Ubuntu terminal!
* Your Dockerfile will be different depending on whether you use apache2 or nginx.   
    * You will need the `FROM` command to determine what the base image you start off with is.  
    * You will need the `RUN` command to install any necessary dependencies.
    * You will need the `COPY` command to copy any files into the image.  
    * You will need the `EXPOSE` command to open a specified port of the image.  
    * You will need the `CMD` command to have your specified commands be ran whenever you use `docker run` on the image
* To run the container, you can use the command `docker run -p <x> <y>`, where `x` is the port number listed in your Dockerfile, and `y` is the name of the image.  
* Once you have the container up and running, you can go to the URL bar at the top of your internet browser and type in `localhost:<z>`, where `z` is the port number you used in your Dockerfile and `docker run` command.  
## Part 2 - GitHub Actions and DockerHub
### Process to create public repo in DockerHub
*  Once you have created a DockerHub account, you can go to your repositories by clicking the "Repositories" tab at the top of the screen. From there, you can click on "Create repository" towards the top right of your screen. It will prompt you for a repository name and an optional description of the repository. You have the option between making the repository public or private. In this case, we want to make sure that public is the one selected.
### How to authenticate with DockerHub via CLI using DockerHub credentials
* what credentials would yo urecommend providing?   
### How to push container image to DockerHub (without GitHub Actions)  
*  After you create your public DockerHub repository, you will be given a command in the "General" tab on the right of the screen. It is as follows: `docker push <username>/<repo name>:<version of image>`
### Configuring GitHub Secrets
* To set a GitHub secret, you go to the settings tab of your repository. From there, you scroll down to find the "Secrets and variables" tab on the left. If you click "Actions" on the drop down, it will bring you to a page where you can create a new repository secret. You will just have to specify a name, and then of course whatever the secret is.
* The secrets set for this are just of your username and password. 
### Behavior of GitHub workflow
* What does it do and when  
* What variables in workflow are custom to your project (may need to be changed of someone else were to use it)