FROM sdal/mro-ldap-ssh-c7

MAINTAINER "Daniel Chen" <chend@vt.edu>

RUN useradd --create-home --shell /bin/bash rpkgs

RUN echo ".libPaths('/home/rpkgs/rpkgs')" >> /root/.Rprofile

USER rpkgs
WORKDIR /home/rpkgs

COPY install_cran.R install_cran.R
COPY install_github.R install_github.R

RUN mkdir rpkgs && echo "rpkgs created" && \
    echo ".libPaths('/home/rpkgs/rpkgs')" >> /home/rpkgs/.Rprofile && \
    Rscript -e "print(.libPaths())" && \
    ls -alh /home/rpkgs

CMD ["/usr/sbin/init"]
