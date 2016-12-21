#!/bin/bash

echo -e "\n"

$HADOOP_HOME/sbin/start-dfs.sh

echo -e "\n"

$HADOOP_HOME/sbin/start-yarn.sh

echo -e "\n"

echo 'init metastore...'
mv metastore_db metastore_db.tmp
schematool -initSchema -dbType derby
echo -e "\n"

