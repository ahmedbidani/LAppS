#!/bin/bash

if [ -f ./common.sh ]
then
  source ./common.sh

  export MANDATORY="CPREFIX UBUNTU BUILD"
  export SOFT="MAP"

  chk_args "$@"

  export UBUNTU_VERSION_CHOSEN=0

  for i in xenial bionic
  do
    if [ "${UBUNTU}" == "${i}" ]
    then
      export UBUNTU_VERSION_CHOSEN=1
    fi
  done

  export BUILD_TYPE_CHOSEN=0

  for i in avx2 ssse3 sse2
  do
    if [ "${BUILD}" == "${i}" ]
    then
      export BUILD_TYPE_CHOSEN=1
    fi
  done

  [ ${UBUNTU_VERSION_CHOSEN} ] || die "Use --ubuntu {xenial|bionic} - only these two ubuntu versions are supported"
  [ ${BUILD_TYPE_CHOSEN} ] || die "Use --build {avx2|ssse3|sse2} - only these two build types are supported"


  [ -f ./VERSION ] || die "No VERSION file in current directory"

  export VERSION=$(cat ./VERSION)

  export options=""

  for i in $MAP
  do
    export options="${options} -v ${i}"
  done

  docker run -it --rm --name ${CPREFIX}.${VERSION}.${UBUNTU}.${BUILD} -h lapps --network=host $options lapps:runenv.${VERSION}.${UBUNTU}.${BUILD} bash

else
  echo "This file is supposed to be executed from within the LAppS build directory (clone of https://github.com/ITpC/LAppS.git)"
fi


