#!/bin/bash


if [[ -n ${MATHDX_HOME:+x} ]]; then
    export CONDA_MATHDX_HOME=$MATHDX_HOME
fi

export MATHDX_HOME=$CONDA_PREFIX/include/mathdx
