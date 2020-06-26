#!/bin/bash

echo "promoting the new version ${VERSION} to downstream repositories"

jx step create pr regex --regex 'version: (.*)' --version ${VERSION} --files docker/gcr.io/jenkinsxio-labs-private/jx-git-operator.yml --repo https://github.com/jenkins-x/jxr-versions.git
