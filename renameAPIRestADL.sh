#!/bin/bash
check_usage() {
  if [ $# -lt 3 ]
  then
    echo "Usage:"
    echo "$0  <ADL_NAMR> <ADL_SOURCE_PATH> <ADL_TARGET_PATH>"
    exit 1
  fi
  if [ -z "${BEARER_TOKEN}" ] ; then 
    echo "SET BEARER_TOKEN"
    exit 1
  fi
}

check_usage $*
curl -i -X PUT -H "Authorization: Bearer ${BEARER_TOKEN}" \
     -d "" https://${1}.azuredatalakestore.net/webhdfs/v1${2}?op=RENAME&destination=${3}
