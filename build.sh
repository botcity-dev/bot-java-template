#!/bin/bash

ERROR="\033[0;31m"
INFO="\033[0;34m"
SUCCESS="\033[0;32m"

if [ -d "dist" ]; then
  rm -rf dist
fi

echo -e "############  Generating the build (compile and package). ############  "
mvn clean package
CMD_MVN_PACKAGE=$?
if [ $CMD_MVN_PACKAGE -ne 0 ] ; then
  echo -e "$ERROR************************************************************************"
  echo -e "$ERROR###### FAIL: an error occurred when trying to deploy in nexus :( ######"
  echo -e "$ERROR************************************************************************"
  exit $CMD_MVN_PACKAGE
fi

mkdir dist

CURRENT_DIR=$(pwd)
DIR_JAR_FILE=$(ls $CURRENT_DIR/target/*jar)
JAR_BUILD=$(echo $DIR_JAR_FILE | rev | cut -f1 -d'/' | rev)
echo -e "$INFO############  Moving generated artifact to the dist directory. ############  "
mv target/$JAR_BUILD dist

echo
echo -e "$SUCCESS****************************************************************************"
echo -e "$SUCCESS######                Build completed successfully!!!!                ######"
echo -e "$SUCCESS****************************************************************************"
echo



