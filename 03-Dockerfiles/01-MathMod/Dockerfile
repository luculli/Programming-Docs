# FROM nvidia/cuda:11.4.2-cudnn8-runtime-ubuntu20.04
FROM ubuntu:20.04

# set time zone
USER root
ENV TZ=Europe/Paris \
    DISPLAY=:0

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install QT
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get  -y install qt5-default

# some basic appz
RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install  apt-utils sudo build-essential git software-properties-common
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install xterm xauth 

# update opengl drivers
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:kisak/kisak-mesa
RUN DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y 

# Add local user at first to have the correct .Xauthority
RUN useradd -m -s /bin/bash seagull -p ""
RUN adduser seagull sudo

# working dir, env and user
WORKDIR /home/seagull
ENV DISPLAY :0
USER seagull

# get last version MathMod
RUN git clone https://github.com/parisolab/mathmod
RUN cd mathmod; qmake; make -j 10

# run
ENTRYPOINT /home/seagull/mathmod/MathMod

