wget http://www.python.org/ftp/python/$VERSION/Python-$VERSION.tgz
tar -xzf Python-$VERSION.tgz
cd Python-$VERSION
export LDFLAGS="-Wl,-rpath=/opt/python$VERSION/lib"
./configure --prefix=/opt/python$VERSION --enable-shared
make
checkinstall --install=no --pkgname=python27 --pkgversion=$VERSION --pkgrelease=$BUILD --nodoc --maintainer=jfroche@affinitic.be --default make install
rm -fr /opt/python27
