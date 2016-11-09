#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  <object-ID>"
    exit 1
  fi
}
check_usage $*
azure ad app delete $1  
