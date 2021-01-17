#!/bin/bash

#
# Usage:
# ./compile.sh `command` `rom_device-buildtype`
#


# Export
export USE_CCACHE=1
export CCACHE_EXEC=$(command -v ccache)
export CCACHE_COMPRESS=1
. build/envsetup.sh
lunch $2


# Build
case "$1" in

    build)
        m installclean
        m bacon
        ;;

    clean)
        m clean && m clobber
        ;;

    dirty)
        m bacon
        ;;

    kernel)
        m installclean
        m bootimage
        ;;

    lunch)
        m installclean
        ;;

    package)
        m installclean
        m $3
        ;;

    updatepackage)
        m updatepackage
        ;;
esac