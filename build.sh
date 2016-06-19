#!/bin/bash

set -e
set -o pipefail  # Bashism

export variant=standard
export arch=$2
export version=$3


function helper() {
	echo -e "Parrot Libre Build System


USAGE
 	 ./build.sh <action> [<arch> <version>]

EXPLAINATION

      action  - help, build
                the action to be performed by this program
                help will show this message, build will start
                the build if correctly combined with variant, arch and version

      arch    - i386, amd64, armel, armhf
                the architecture that will be built

      version - the version of parrot that has to be
                written in the live boot menu
                 
EXAMPLE
 	 ./build.sh build amd64 3.0-CUSTOM
"
}

function build() {
	lb clean
	lb config
	lb build &&\
	mv live-image-*.hybrid.iso Parrot-Libre-$version\_$arch.iso
}

case $1 in
	build)
		build
	;;
	help)
		helper
	;;
	*)
		helper
	;;
esac
