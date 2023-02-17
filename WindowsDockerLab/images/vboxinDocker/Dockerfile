FROM kalilinux/kali-rolling
ENV DEBIAN_FRONTEND=noninteractive
#RUN apt update && apt install -y openssh-server virtualbox virtualbox-dkms linux-headers-generic supervisor vim curl zip unzip 
RUN apt update && apt install -y openssh-server virtualbox wget vim curl zip unzip 
RUN mkdir /home/iso
RUN mkdir /home/vms

VOLUME /dev/vboxdrv
