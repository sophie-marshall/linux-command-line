# set Ubuntu as the base image 
FROM ubuntu:latest 

# silence package manager questions
ENV DEBIAN_FRONTEND=noninteractive 

# install some packages by executing commands inside the container
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    build-essential \
    git \
    sudo \
    file \
    man-db \
    manpages \
    manpages-dev

# create a working directory 
WORKDIR /linux_command_line

# set directory ownership 
RUN chown -R root:root /linux_command_line
RUN chmod -R 777 /linux_command_line

# set default command prompt 
CMD ["/bin/bash"]