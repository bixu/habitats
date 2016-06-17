pkg_origin=bixu
pkg_name=hitch
pkg_version=1.2.0
pkg_maintainer="Blake Irvin <blake.irvin@gmail.com>"
pkg_license=('MIT')
pkg_source=https://hitch-tls.org/source/${pkg_name}-${pkg_version}.tar.gz
pkg_shasum=cc836bfc6d0593284d0236f004e5ee8fd5e41fc3231d81ab4b69feb7a6b4ac41
pkg_deps=(core/glibc core/openssl bixu/libev)
pkg_build_deps=(core/cacerts core/gcc core/pkg-config core/make)
pkg_bin_dirs=(bin)
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)


do_build() {
    export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$(pkg_path_for core/openssl)/lib/pkgconfig/"
    ./configure --with-rst2man=/bin/true --prefix=${pkg_prefix}
    make
}

do_install() {
    make install
}
