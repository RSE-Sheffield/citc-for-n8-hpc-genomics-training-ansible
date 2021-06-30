#! /bin/bash
# Add any commands you wish to run in the compute image to this file
# and rerun `run-packer`
# If you need root permissions for any commands, use sudo

# e.g.:
# sudo yum -y groupinstall "Development Tools"
# sudo yum -y install cmake gcc-gfortran

# to install CernVM-FS and configure access to EESSI, uncomment the line below:
# /home/citc/install_cvmfs_eessi.sh

sudo yum -y groupinstall "Development Tools"
sudo yum -y install cmake gcc-gfortran
sudo yum -y install openssl-devel
echo 'export MODULEPATH=/mnt/shared/modules/all:$MODULEPATH' | sudo tee /etc/profile.d/10-modules.sh
