FROM centos:7
ADD runme.sh /
RUN yum install -y openssh-server && chmod +x /runme.sh
CMD /runme.sh
