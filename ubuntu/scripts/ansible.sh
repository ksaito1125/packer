#!/bin/sh
#
# ansibleをPPAからインストール
#  Latest Releases Via Apt (Ubuntu)
#  http://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-ubuntu

set -e
set -x

BASE=prov-ppa-ansible.sh
PROVISION=/var/${BASE}
echo provision: ${PROVISION}
if [ -f "${PROVISION}" ]
then
    echo provision: already exist ${PROVISION}
    exit 0
fi

apt-get update -y && \
apt-get upgrade -y && \
apt-get install -y --force-yes software-properties-common && \
apt-add-repository -y ppa:ansible/ansible && \
apt-get update -y && \
apt-get install -y --force-yes ansible

rc=$?
if [ ${rc} = 0 ]
then
    touch ${PROVISION}
fi
echo provision: status ${rc}

