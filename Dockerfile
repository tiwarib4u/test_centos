FROM centos:7

# Install Apache
RUN yum -y update
RUN yum -y install httpd httpd-tools

COPY index.html /var/www/html/

EXPOSE 80

RUN rm -rf /bin/bash /bin/sh

# Start Apache
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
