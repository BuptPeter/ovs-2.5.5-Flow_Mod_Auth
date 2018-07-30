echo "清理编译缓存..."
rm ../*.deb
`DEB_BUILD_OPTIONS='parallel=8 nocheck' fakeroot debian/rules clean`
debian/rules clean
echo "重新编译OVS..."
`DEB_BUILD_OPTIONS='parallel=8 nocheck' fakeroot debian/rules binary`
echo "编译成功，Enjoy..."
