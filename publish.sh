#!/bin/bash
#helm registry login -u gabeduke quay.io

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

CHART=${1}
CHANNEL=${2}

pushd "${DIR}/${CHART}"
    helm registry push --namespace gabeduke --channel ${CHANNEL} quay.io
popd