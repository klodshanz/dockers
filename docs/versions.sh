#!/bin/bash
echo
echo "-------------------------------------------------------------------------------------"
echo "DOCKERS (docs) VERSIONS"
echo "-------------------------------------------------------------------------------------"

python3.7 --version

pip3 --version

mkdocs --version

pelican_version=`pelican --version`
echo "pelican $pelican_version"

echo "-------------------------------------------------------------------------------------"
echo
