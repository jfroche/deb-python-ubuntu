export PYTHON_VERSION="2.7.7"
wget http://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz
tar -xzf Python-$PYTHON_VERSION.tgz
cd Python-$PYTHON_VERSION
export LDFLAGS="-Wl,-rpath=/opt/python$PYTHON_VERSION/lib"
./configure --prefix=/opt/python$PYTHON_VERSION --enable-shared
make
checkinstall --install=no --pkgname=python27 --pkgversion=$PYTHON_VERSION --pkgrelease=1 --nodoc --maintainer=jfroche@affinitic.be --default make install
rm -fr /opt/python27
