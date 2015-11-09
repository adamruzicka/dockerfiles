FROM centos:7
ADD runme.sh /runme.sh
ADD resources /home/foreman/
RUN yum -y install rubygem-bundler git ruby-devel make patch tar gcc gcc-c++ zlib-devel libvirt-devel postgresql-devel
RUN chmod +x /runme.sh && \
    useradd -m foreman -u 1000 -g users && \
    chown -R foreman:users /home/foreman && \
    su foreman -c "cd ~ && bundle install --without ec2 mysql2 ovirt sqlite vmware"
ENV PATH /home/foreman/bin:$PATH
CMD /runme.sh

