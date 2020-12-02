FROM gitpod/workspace-full

USER root
# Install mongodb
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 4B7C549A058F8B6B
RUN echo "deb [arch=amd64] http://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
RUN apt update \
    && apt install mongodb-org
RUN sudo mkdir -p /data/db \
 && sudo chown gitpod:gitpod -R /data/db
