#!/bin/bash

echo "This is $0"

box_url="https://gpdb-builds.s3.amazonaws.com/box-files/centos65_virtualbox_50G.box"
bits_url="https://gpdb-builds.s3.amazonaws.com/lab-data/VM-Bits.tar"
gpdb_url="https://gpdb-builds.s3.amazonaws.com/gpdb-4.3.9.1/greenplum-db-4.3.9.1-build-1-rhel5-x86_64.zip"
gpcc_url="https://gpdb-builds.s3.amazonaws.com/gpdb-4-3-9.1/greenplum-cc-web-2.4.0-build-43-RHEL5-x86_64.zip"

box="${box_url##*/}"
bits="${bits_url##*/}"
bits_dir="${bits%.tar}"

gpdb_installer="${gpdb_url##*/}"
echo "gpdb_installer = " $gpdb_installer

gpcc_installer="${gpcc_url##*/}"
echo "gpcc_installer = " $gpcc_installer

[ -f /tmp/$box ] || {
  echo "Downloading box file from $box_url"
  curl --output /tmp/$box $box_url
}

[ -d ./$bits_dir ] || {
  echo "Downloading bits file from $bits_url"
  curl $bits_url | tar -xvf -
}

# Make sure GPDB and GPCC installers are there
bins_dir="./VM-Bits/rawdata/Binaries"

[ -f $bins_dir/$gpdb_installer ] || {
  echo "Downloading GPDB installer $gpdb_url"
  curl --output $bins_dir/$gpdb_installer $gpdb_url
}

[ -f $bins_dir/$gpcc_installer ] || {
  echo "Downloading GPCC installer $gpcc_url"
  curl --output $bins_dir/$gpcc_installer $gpcc_url
}
