#!/bin/bash

apt-get update
apt-get install -y apt-transport-https gnupg2

AZ_REPO='stretch'
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | tee /etc/apt/sources.list.d/azure-cli.list

cat /install/microsoft.key | apt-key add -

apt-get update && apt-get install -y azure-cli
