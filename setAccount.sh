#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  <subscriptionNameOrId>"
    exit 1
  fi
}
check_usage $*
azure account set  $1
