#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  <Object Id>"
    exit 1
  fi
}
check_usage $*
azure ad sp show --objectId $1
