#!/bin/sh

set -e
set -x

rm -rf /tmp/oci-pull
mkdir /tmp/oci-pull

flux pull artifact \
  oci://img.hephy.pro/examples/howto-kubeconfig-dev:development \
  --output /tmp/oci-pull && \
  rsync --delete -rlv /tmp/oci-pull/ /usr/share/nginx/html

if [ ! -f /usr/share/nginx/html/index.html ]
then
  echo "bailing, index.html wasn't present"
  exit 1
fi

rm -rf /tmp/oci-pull
