#!/bin/sh
# This is a basic script that runs a glorified gnome-autogen.sh

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

PKG_NAME="telepathy-glib-sharp"

. gnome-autogen.sh