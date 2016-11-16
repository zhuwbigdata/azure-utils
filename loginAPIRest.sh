#!/bin/bash
check_usage() {
    echo "SET  <TENANT_ID> <CLIENT_ID> <CLIENT_SECRET>"
    exit 1
}
if [ ! -z "${TENANT_ID}" ] && [ ! -z "${CLIENT_ID}" ]  && [ ! -z "${CLIENT_SECRET}" ]; then 
  curl -X POST https://login.microsoftonline.com/${TENANT_ID}/oauth2/token  \
       -F grant_type=client_credentials \
       -F resource=https://management.core.windows.net/ \
       -F client_id=${CLIENT_ID} \
       -F client_secret=${CLIENT_SECRET}
else
  check_usage 
fi

