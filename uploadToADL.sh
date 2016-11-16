#!/bin/bash
check_usage() {
  if [ $# -lt 3 ]
  then
    echo "Usage:"
    echo "$0  <ADL_NAME> <LOCAL_FILE_PATH> <ADL_TARGET_PATH>"
    exit 1
  fi
}
check_usage $*
azure datalake store filesystem import $1 "$2" "$3"
