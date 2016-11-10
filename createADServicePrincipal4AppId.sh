#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  <Application_ID>"
    exit 1
  fi
}
check_usage $*
azure ad sp create --applicationId $1   
