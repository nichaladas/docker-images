#!/bin/bash

set -e

# Add webupd8team apt repsitory
eatmydata -- apt-get install -yq python-software-properties
add-apt-repository ppa:webupd8team/java -y && apt-get update

# Install Oracle Java 8
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
eatmydata -- apt-get install -yq oracle-java8-installer
