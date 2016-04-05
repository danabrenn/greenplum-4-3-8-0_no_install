#Instructions for building a Greenplum 4.3.8.0 / Greenplum Command Center 2.0.0 environment with Vagrant

------------------
------------------
This Vagrant build will create four ( 4 ) Greenplum Database nodes.
The four ( 4 ) nodes are:

1.  mdw		--> greenplum master
2.  smdw  --> greenplum standby master
3.  sdw1  --> greenplum segment host 1
4.  sdw2  --> greenplum segment host 2

------------------
------------------

The scripts that get executed are:

1. Vagrantfile -- Vagrant script to define the build process
2. install_applications.sh -- script to install required applications ( non Greenplum Applications ) onto the nodes
3. setup_host.sh -- on each host creates minimal /etc/hosts file, creates /data directory and populates .bashrc file
4. setup_master.sh -- generates ssh keys, pushes keys to other nodes, sets kernel and security limits parameters and copies them to other hosts
5. change_password.sh -- changes root password from 'vagrant' to 'Piv0tal'
6. install_lab_data_on_sdw1.sh -- copies files required for lab exercises to sdw1
7. install_lab_data_on_mdw.sh -- copies files required for lab exercises to mdw ( including Greenplum Database & Command Center installation files )
8. unmount_vagrant.sh -- unmounts /vagrant directory

This build DOES NOT install / configure Greenplum 4.3.8.0 or Greenplum Command Center 2.0.0

Once built this environment can be used to install / configure Greenplum 4.3.8.0 and Greenplum Command Center 2.0.0

------------------
------------------

Required Downloads

1. Install Virtualbox from -- https://www.virtualbox.org/wiki/Downloads
2. Install latest version of Vagrant from -- http://downloads.vagrantup.com/
3. Download 'VM-Bits-4-3-8-0.7z' from -- https://drive.google.com/open?id=0B0GuXbbUzfoWNFM0TUVNSS1EYkU

--------------
--------------

Building the Greenplum 4.3.8.0 Environment

Execute the following commands in a terminal window:

1. $ git init
2. $ git clone https://github.com/danabrenn/greenplum-4-3-8-0_no_install.git
3. $ cd greenplum-4-3-8-0_no_install

Unzip 'VM-Bits-4-3-8-0.7z' to the cloned directory 'greenplum-4-3-8-0_no_install'

Execute the following command in a terminal window:

1. $ vagrant up

Once the Vagrant build process is completed you have a Greenplum Cluster on which you can install the Greenplum Database version 4-3-8-0 and the Greenplum Command Center version 2.0.0

------------------
------------------
