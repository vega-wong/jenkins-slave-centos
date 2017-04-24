FROM centos:latest
MAINTAINER vegawong <vegawong@126.com>

RUN yum -y remove fakesystemd && \
    yum -y install systemd wget tar.x86_64 which git gcc automake autoconf libtool make gcc gcc-c++ iputils openssh-server && \
    yum clean all


# update sshd setting
RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd \
    && mkdir -p  /var/run/sshd

# add jenkins user
RUN useradd -u 1000 -m -s /bin/bash jenkins \
    && echo "jenkins:jenkins" | chpasswd

# generate ssh keys
RUN /usr/bin/ssh-keygen -A

# Standard SSH port
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]