#!/bin/bash

PREFIX=/opt/Chrony
echo "=============================================="
date

sudo ./configure --prefix=${PREFIX} \
--with-pidfile=${PREFIX}/var/run/chronyd.pid \
--sysconfdir=${PREFIX}/etc \
--datarootdir=${PREFIX}/share \
--localstatedir=${PREFIX}/var \
--chronyrundir=${PREFIX}/var/run \
--chronyvardir=${PREFIX}/var/lib \
--disable-ipv6 \
--enable-debug

echo "=============================================="
date

make

echo "=============================================="
date

make docs

echo "=============================================="
date

sudo make install

echo "=============================================="
date


exit 0

#
#Usage: ./configure [OPTION]...
#
#Defaults for the options are specified in brackets.
#
#Configuration:
#  -h, --help              display this help and exit
#
#Installation directories:
#  --prefix=PREFIX         install architecture-independent files in PREFIX
#                          [/usr/local]
#  --exec-prefix=EPREFIX   install architecture-dependent files in EPREFIX
#                          [PREFIX]
#
#By default, `make install' will install all the files in
#`/usr/local/bin', `/usr/local/lib' etc.  You can specify
#an installation prefix other than `/usr/local' using `--prefix',
#for instance `--prefix=/root'.
#
#For better control, use the options below.
#  --disable-readline     Disable line editing support
#  --without-editline     Don't use editline even if it is available
#  --disable-sechash      Disable support for hashes other than MD5
#  --without-nettle       Don't use nettle even if it is available
#  --without-gnutls       Don't use gnutls even if it is available
#  --without-nss          Don't use NSS even if it is available
#  --without-tomcrypt     Don't use libtomcrypt even if it is available
#  --disable-nts          Disable NTS support
#  --disable-cmdmon       Disable command and monitoring support
#  --disable-refclock     Disable reference clock support
#  --disable-phc          Disable PHC refclock driver
#  --disable-pps          Disable PPS refclock driver
#  --disable-ipv6         Disable IPv6 support
#  --disable-rtc          Don't include RTC even on Linux
#  --disable-privdrop     Disable support for dropping root privileges
#  --without-libcap       Don't use libcap even if it is available
#  --enable-scfilter      Enable support for system call filtering
#  --without-seccomp      Don't use seccomp even if it is available
#  --disable-forcednsretry Don't retry on permanent DNS error
#  --without-aes-gcm-siv  Don't use AES-GCM-SIV for NTS even if it is available
#  --without-clock-gettime Don't use clock_gettime() even if it is available
#  --disable-timestamping Disable support for SW/HW timestamping
#  --enable-ntp-signd     Enable support for MS-SNTP authentication in Samba
#  --with-ntp-era=SECONDS Specify earliest assumed NTP time in seconds
#                         since 1970-01-01 [50*365 days ago]
#  --with-user=USER       Specify default chronyd user [root]
#  --with-chronyc-user=USER Specify default chronyc user [root]
#  --with-hwclockfile=PATH Specify default path to hwclock(8) adjtime file
#  --with-pidfile=PATH    Specify default pidfile [/var/run/chrony/chronyd.pid]
#  --with-rtcdevice=PATH  Specify default path to RTC device [/dev/rtc]
#  --with-sendmail=PATH   Path to sendmail binary [/usr/lib/sendmail]
#  --enable-debug         Enable debugging support
#
#Fine tuning of the installation directories:
#  --sysconfdir=DIR       chrony.conf location [/etc]
#  --bindir=DIR           user executables [EPREFIX/bin]
#  --sbindir=DIR          system admin executables [EPREFIX/sbin]
#  --datarootdir=DIR      data root [PREFIX/share]
#  --mandir=DIR           man documentation [DATAROOTDIR/man]
#  --docdir=DIR           documentation root [DATAROOTDIR/doc/chrony]
#  --localstatedir=DIR    modifiable single-machine data [/var]
#  --chronyrundir=DIR     location for chrony sockets [LOCALSTATEDIR/run/chrony]
#  --chronyvardir=DIR     location for chrony data [LOCALSTATEDIR/lib/chrony]
#
#Overriding system detection when cross-compiling:
#  --host-system=OS       Specify system name (uname -s)
#  --host-release=REL     Specify system release (uname -r)
#  --host-machine=CPU     Specify machine (uname -m)
#
#Some influential environment variables:
#  CC          C compiler command
#  CFLAGS      C compiler flags
#  CPPFLAGS    C preprocessor flags, e.g. -I<include dir> if you have
#              headers in a nonstandard directory <include dir>
#  LDFLAGS     linker flags, e.g. -L<lib dir> if you have libraries in a
#              nonstandard directory <lib dir>
#  PKG_CONFIG  path to pkg-config utility
#  PKG_CONFIG_PATH
#              directories to add to pkg-config's search path
#  PKG_CONFIG_LIBDIR
#              path overriding pkg-config's built-in search path
#
#Use these variables to override the choices made by `configure' or to help
#it to find libraries and programs with nonstandard names/locations.

# end of file

