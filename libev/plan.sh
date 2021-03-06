pkg_origin=bixu
pkg_name=libev
pkg_version=4.22
pkg_maintainer="Blake Irvin <blake.irvin@gmail.com>"
pkg_license=('MIT')
pkg_source=http://dist.schmorp.de/libev/${pkg_name}-${pkg_version}.tar.gz
pkg_shasum=736079e8ac543c74d59af73f9c52737b3bfec9601f020bf25a87a4f4d0f01bd6
pkg_deps=(core/glibc)
pkg_build_deps=(core/cacerts core/gcc core/make)
pkg_bin_dirs=(bin)
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)
