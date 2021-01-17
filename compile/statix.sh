#!/bin/bash

#
# Usage:
# ./statix.sh `command` `device-buildtype`
#


# Export
export USE_CCACHE=1
export CCACHE_EXEC=$(command -v ccache)
export STATIX_BUILD_TYPE=OFFICIAL
export CCACHE_COMPRESS=1
. build/envsetup.sh
lunch statix_$2


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