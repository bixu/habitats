pkg_origin=bixu
pkg_name=hitch
pkg_version=1.2.0
pkg_maintainer="Blake Irvin <blake.irvin@gmail.com>"
pkg_license=('MIT')
pkg_source=https://hitch-tls.org/source/${pkg_name}-${pkg_version}.tar.gz
pkg_shasum=cc836bfc6d0593284d0236f004e5ee8fd5e41fc3231d81ab4b69feb7a6b4ac41
pkg_deps=(core/glibc)
pkg_build_deps=(core/cacerts core/gcc core/pkg-config core/openssl core/make bixu/libev)
pkg_bin_dirs=(bin)
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)


do_build() {
    export SSL_CFLAGS="-I/${pkg_include_dirs}"
    export SSL_LIBS="-L/${pkg_lib_dirs}"
    export CRYPTO_CFLAGS="-I/${pkg_include_dirs}"
    export CRYPTO_LIBS="-L/${pkg_lib_dirs}"
    ./configure --with-rst2man=/bin/true --prefix=/
    make
}

do_install() {
    make install
}
