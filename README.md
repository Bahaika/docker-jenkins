### Docker-Jenkins

![Jenkins logo](https://raw.githubusercontent.com/Bahaika/docker-jenkins/master/jenkins-logo.png)

#### What is it ?

It's a docker image based on the official jenkins image with thedocker client installed insite it, so the jenkins will be able to communicate with the docker daemon of it's host if we pass the socket to the container, see example below.

#### Usage

```
docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /mnt/volumles/jenkins:/var/jenkins_home \
  --name=jenkins bahaika/docker-jenkins
```