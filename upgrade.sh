#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

NAME=${1}
CHART=${2}
TAG=${3}

pushd "${DIR}/${CHART}"
    helm registry upgrade quay.io/gabeduke/${CHART}:${TAG} ${NAME} -f values-${NAME}.yaml --install
popd