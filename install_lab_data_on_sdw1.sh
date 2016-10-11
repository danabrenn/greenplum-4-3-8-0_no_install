#!/usr/bin/env bash

echo "***** Installing Lab Files On sdw1 *****"

cd /

# all files & directories in the  /vagrant directory are mounted each vm
# VM-Bits-4-3-8-0 contains all of the bits required by the lab exercises
# changed dir name to VM-Bits to work with Goddards scripts
# cd vagrant/VM-Bits-4-3-8-0
cd vagrant/VM-Bits

# extract sdw1_loaddata.tar to the /loaddata directory
# Note that this data is loaded to sdw1 only
tar -xf sdw1_loaddata.tar -C /

# create /home/gp/sql/load_files on sdw1 to store CustomerData.csv
mkdir -p /home/gp/sql/load_files