#!/bin/bash


if [[ -n ${CONDA_MATHDX_HOME:+x} ]]; then
    export MATHDX_HOME=$CONDA_MATHDX_HOME
    unset CONDA_MATHDX_HOME
else
    unset MATHDX_HOME
fi
