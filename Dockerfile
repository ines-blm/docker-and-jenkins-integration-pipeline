# specifying base image 
FROM centos:7

LABEL maintainer="Ines"

RUN yum -y update 

RUN yum -y install httpd

COPY index.html /var/www/html/ 

# container will listen on port 80
EXPOSE 80

# Start our container with HTTPD
ENTRYPOINT ["/usr/sbin/httpd"]
# Run entrypoint in background
CMD [ "-D", "FOREGROUND" ]
