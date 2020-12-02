FROM gitpod/workspace-full

RUN wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1604-4.0.21.tgz \
    && tar -xzvf  mongodb-linux-x86_64-ubuntu1604-4.0.21.tgz \
    && sudo cp mongodb-linux-x86_64-ubuntu1604-4.0.21/bin/* /usr/local/bin/
    
RUN sudo mkdir -p /data/db \
   && sudo chown gitpod:gitpod -R /data/db \
   && sudo chown gitpod:gitpod -R /usr/local/bin/mongo*
  
