AC_INIT(telepathy-glib-sharp, 0.7.10)
AC_CONFIG_SRCDIR([Makefile.am])
AM_INIT_AUTOMAKE(AC_PACKAGE_NAME, AC_PACKAGE_VERSION)
AM_MAINTAINER_MODE

AC_PATH_PROG(MONO, mono)
if test "x$MONO" = "x" ; then
   AC_MSG_ERROR([Can't find "mono" in your PATH])
fi

AC_PATH_PROG(MCS, mcs)
AC_PATH_PROG(GMCS, gmcs)
if test "x$GMCS" != "x" ; then
   MCS=$GMCS
fi

if test "x$MCS" = "x" ; then
  AC_MSG_ERROR([Can't find "mcs" or "gmcs" in your PATH])
fi

AC_PATH_PROG(GAPIGEN, gapi2-codegen)
if test "x$GAPIGEN" = "x" ; then
   AC_MSG_ERROR([Can't find "gapi2-codegen" in your PATH])
fi

AC_PATH_PROG(GAPIFIX, gapi2-fixup)
if test "x$GAPIFIX" = "x" ; then
   AC_MSG_ERROR([Can't find "gapi2-fixup" in your PATH])
fi

AC_PATH_PROG(GAPIPAR, gapi2-parser)
if test "x$GAPIPAR" = "x" ; then
   AC_MSG_ERROR([Can't find "gapi2-parser" in your PATH])
fi

MONO_REQUIRED_VERSION=1.2.0
GTKSHARP_REQUIRED_VERSION=2.10.0
TELEPATHY_GLIB_REQUIRED_VERSION=0.7.0

PKG_CHECK_MODULES(BASE_DEPENDENCIES,
                  mono >= $MONO_REQUIRED_VERSION)

PKG_CHECK_MODULES(TELEPATHY_GLIB_SHARP,
                  gtk-sharp-2.0 >= $GTKSHARP_REQUIRED_VERSION,
                  telepathy-glib >= $TELEPATHY_GLIB_REQUIRED_VERSION)

AC_CONFIG_FILES([
Makefile
sources/Makefile
telepathy-glib/Makefile
telepathy-glib/telepathy-glib-sharp-1.0.pc
telepathy-glib/telepathy-glib-sharp.dll.config
])

AC_OUTPUT