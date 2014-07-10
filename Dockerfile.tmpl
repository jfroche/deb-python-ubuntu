FROM ubuntu:12.04
MAINTAINER Jean-François Roche <jfroche@affinitic.be>
ENV HOME /root
WORKDIR /root/
RUN apt-get install -y build-essential libsqlite3-dev zlib1g-dev libncurses5-dev libgdbm-dev libbz2-dev libreadline6-dev libssl-dev libdb-dev checkinstall wget ca-certificates unzip
ADD build27.sh /root/build27.sh
RUN /root/build27.sh
RUN dpkg -i /root/Python-2.7.7/python27_2.7*_amd64.deb
RUN /opt/python2.7.7/bin/python2.7 -c 'import ssl'
RUN /opt/python2.7.7/bin/python2.7 -c 'import zlib'
RUN /opt/python2.7.7/bin/python2.7 -c 'import crypt'
RUN /opt/python2.7.7/bin/python2.7 -c 'import gzip'
RUN wget https://pypi.python.org/packages/source/s/setuptools/setuptools-3.5.1.zip
RUN unzip setuptools-3.5.1.zip
RUN cd setuptools-3.5.1 && checkinstall --install=no --exclude /opt/python2.7.7/lib/python2.7/site-packages/easy-install.pth --pkgname=python27-setuptools --pkgversion=3.5.1 --pkgrelease=1 --nodoc --maintainer=jfroche@affinitic.be --default /opt/python2.7.7/bin/python setup.py install
RUN checkinstall --install=no --pkgname=python27-virtualenv --pkgversion=1.11.6 --pkgrelease=1 --nodoc --maintainer=jfroche@affinitic.be --default /opt/python2.7.7/bin/easy_install virtualenv
