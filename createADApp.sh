#!/bin/bash
check_usage() {
  if [ $# -lt 3 ]
  then
    echo "Usage:"
    echo "$0  <name> <home-page> <identifier-uris>"
    exit 1
  fi
}
check_usage $*
azure ad app create $1  $2 $3 
