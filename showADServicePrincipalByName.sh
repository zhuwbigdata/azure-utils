#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  <Service_Principal_Name>"
    exit 1
  fi
}
check_usage $*
azure ad sp show --spn $1
