#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  <AZURE_AD_USER_ID>"
    exit 1
  fi
}
check_usage $*
azure login --username $1 
