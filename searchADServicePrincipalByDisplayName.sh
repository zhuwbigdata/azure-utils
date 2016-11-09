#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  <Display_Name>"
    exit 1
  fi
}
check_usage $*
azure ad sp show --search $1
