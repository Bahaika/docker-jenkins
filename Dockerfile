FROM jenkins:latest
MAINTAINER Jérémy SEBAN <jeremy@seban.eu>

USER root

RUN echo "deb http://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list
RUN apt-get update
RUN apt-get install -y --force-yes docker-engine
RUN usermod -aG docker jenkins

USER jenkins
