FROM sdal/mro-ldap-ssh-c7

MAINTAINER "Daniel Chen" <chend@vt.edu>

RUN yum install -y v8-314-devel

RUN useradd --create-home --shell /bin/bash rpkgs

USER rpkgs
WORKDIR /home/rpkgs

RUN wget https://raw.githubusercontent.com/bi-sdal/dockerfiles/master/install.R && \
    mkdir rpkgs && echo "rpkgs created" &&\
    echo ".libPaths('~/rpkgs')" >> ~/.Rprofile && \
    Rscript -e "print(.libPaths())" && \
    Rscript install.R

CMD ["/usr/sbin/init"]
