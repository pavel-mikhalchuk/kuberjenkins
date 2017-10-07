#!/bin/bash

#Pull Jenkins from backup
cd /usr/share/jenkins/ref
git clone https://pavel-mikhalchuk-belarus:123qweasd@github.com/pavel-mikhalchuk/kuberjenkins.git

cp -r kuberjenkins/src/ .
rm -rf kuberjenkins

#Start Jenkins
/bin/tini -s -- /usr/local/bin/jenkins.sh
