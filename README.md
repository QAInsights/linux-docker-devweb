# Linux Docker Image for LoadRunner Developer
This docker image helps you to run LoadRunner Developer scripts in Linux container. LoadRunner Developer leverages DevWeb protocol, a brand new offering from Micro Focus.

#### You can also check it out [Windows Image](https://github.com/QAInsights/windows-docker-devweb).

## Prerequisites

Following are the prerequisites required to work in LoadRunner Developer:

* LoadRunner Developer package (latest stable version)
* Working knowledge on DevWeb protocol. Check out my [Udemy course](https://www.udemy.com/course/performance-testing-using-truweb/) to learn about DevWeb procotol.

## How to download LoadRunner Developer?

LoadRunner Developer is free to use for up to 50 virtual users. You need to create an account at Micro Focus Marketplace.
* Download LoadRunner Linux package from [marketplace](https://marketplace.microfocus.com/appdelivery/content/loadrunner-developer).


## How to build this image?

I suggest you to build this image before you start using it. Follow the below steps to build this image.

* Clone this repository
* Place the DevWeb tar file inside your folder
* Run the build command

`docker build -t <name> .`

e.g. `docker build -t devweb .`

This image uses Ubuntu as base image.

## How to run the container?

Once the build is successful, you can run the script from the `examples` folder using the below command.

`docker run devweb -mode=single .\examples\EmptyScript`

Important Notes:
* No need to append DevWeb.exe in the command
* Default working directory is `/DevWeb`

## How to mount the volume to the container?

You can mount your host to the container using the below command.

`docker run -v C:\Scripts\AdvantageOnlineShopping:/Scripts/AdvantageOnlineShopping devwebl --mode=single /Scripts/AdvantageOnlineShopping`

## How to view the results?

Using the mount volume command, after the execution is completed, you can view the results inside the script folder e.g. `C:\Scripts\AdvantageOnlineShopping\results`.

## Why building the image is required?

DevWeb package file is not publicly downloadable. You need to login and download it. This repo doesn't contain the DevWeb package, as it is against Micro Focus terms to host the DevWeb contents in the public repo. It is must for you to download the DevWeb tar file and place it in your local repo.

## Learn more
Visit my [blog](https://qainsights.com/what-is-loadrunner-developer/) to learn more about LoadRunner Developer, DevWeb and more.