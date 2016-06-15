pkg_origin=bixu
pkg_name=memcached
pkg_version=1.4.25
pkg_maintainer="Blake Irvin <blake.irvin@gmail.com>"
pkg_license=('MIT')
pkg_source=http://www.memcached.org/files/${pkg_name}-${pkg_version}.tar.gz
pkg_shasum=f058437b3c224d321919a9a6bb4e3eedb2312ed718c0caf087ff2f04ab795dda
pkg_deps=(core/cacerts core/glibc core/git core/gcc)
pkg_build_deps=()
pkg_bin_dirs=(bin)
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)
pkg_svc_run="bin/memcached"
pkg_expose=(11211)

do_build() {
  ./configure
  make
  make test
}