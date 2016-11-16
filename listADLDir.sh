#!/bin/bash
check_usage() {
  if [ $# -lt 2 ]
  then
    echo "Usage:"
    echo "$0  <ADL_NAME> <ADL_TARGET_PATH>"
    exit 1
  fi
}
check_usage $*
azure datalake store filesystem list $1 "$2" 
