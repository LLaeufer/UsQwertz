rm usqwertz-0.0.1-1.*.noarch.rpm
rm -r rpmbuild
rm -r usqwertz-0.0.1
sudo dnf install -y rpmdevtools rpmlint
mkdir -p rpmbuild/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}
mkdir usqwertz-0.0.1
cp custom usqwertz-0.0.1
tar --create --file usqwertz-0.0.1.tar.gz usqwertz-0.0.1
mv usqwertz-0.0.1.tar.gz rpmbuild/SOURCES/usqwertz-0.0.1.tar.gz
cp usqwertz.spec rpmbuild/SPECS/usqwertz.spec
rpmbuild --define "_topdir `pwd`/rpmbuild" -ba rpmbuild/SPECS/usqwertz.spec
for packagepath in rpmbuild/RPMS/noarch/usqwertz-0.0.1-1.*.noarch.rpm; do
	packagename=${packagepath:21}
	mv "$packagepath" "$packagename"
done
rm -r rpmbuild
rm -r usqwertz-0.0.1
