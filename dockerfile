from centos:7
RUN rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm
RUN yum install -y puppetserver puppet-agent
RUN PATH=/usr/local/bin:$PATH
CMD sleep 100000
