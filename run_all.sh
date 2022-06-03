#!/bin/sh

for run in */run.sh
do
    lang=$(dirname $run)
    echo ========== $lang ==========
    pushd $lang
    ./run.sh
    popd
done
