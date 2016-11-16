#!/bin/bash
check_usage() {
  if [ $# -lt 2 ]
  then
    echo "Usage:"
    echo "$0  <ADL_NAMR> <ADL_PATH>"
    exit 1
  fi
  if [ -z "${BEARER_TOKEN}" ] ; then 
    echo "SET BEARER_TOKEN"
    exit 1
  fi
}

check_usage $*
curl -i -X GET -H "Authorization: Bearer ${BEARER_TOKEN}" \
    https://${1}.azuredatalakestore.net/webhdfs/v1/${2}/?op=LISTSTATUS


