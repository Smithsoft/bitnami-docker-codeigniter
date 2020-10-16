#!/bin/bash

curl --silent -L https://github.com/DataDog/php-datadogstatsd/archive/1.5.2.tar.gz > /tmp/dogstatsd.tar.gz
echo "cc7cc4900c3e08cc3576376d3433f96b6a0a262556047f48059a3693c2179095 /tmp/dogstatsd.tar.gz" | sha256sum --check
mkdir /opt/dogstatsd
tar zxf /tmp/dogstatsd.tar.gz --strip 1 -C /opt/dogstatsd && rm /tmp/dogstatsd.tar.gz
curl --silent -L https://raw.githubusercontent.com/DataDog/php-datadogstatsd/1.5.2/LICENSE > /opt/dogstatsd/LICENSE.txt