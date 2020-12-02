FROM gitpod/workspace-full


RUN mkdir -p /tmp/mongodbtools && \
    cd /tmp/mongodbtools && \
    wget -qOmongodbtools.tgz https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu1604-ppc64le-100.2.1.tgz && \
    tar xf mongodbtools.tgz && \
    cd mongodb-* && \
    sudo cp bin/* /usr/local/bin/ && \
    rm -rf /tmp/mongodbtools

RUN mkdir -p /tmp/mongodb && \
    cd /tmp/mongodb && \
    wget -qOmongodb.tgz https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1604-4.0.21.tgz && \
    tar xf mongodb.tgz && \
    cd mongodb-* && \
    sudo cp bin/* /usr/local/bin/ && \
    rm -rf /tmp/mongodb && \
    sudo mkdir -p /data/db && \
    sudo chown gitpod:gitpod -R /data/db

