#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  <subscription_ID>"
    exit 1
  fi
}
check_usage $*
azure account show $1
