FROM centos:7
ADD runme.sh /runme.sh
ADD resources /home/foreman/
RUN yum -y install rubygem-bundler git ruby-devel libffi-devel gcc gcc-c++ make patch tar krb5-devel augeas-devel sqlite-devel && \
    chmod +x /runme.sh && \
    useradd foreman -u 1000 -g users && \
    chown -R foreman:users /home/foreman && \
    su foreman -c "cd /home/foreman/ && bundle install"
ENV PATH /home/foreman/bin:$PATH
CMD /runme.sh

