#!/bin/bash
if [ ! -f "CentOS-7-x86_64-Minimal-1503-01.iso" ]; then
  echo Centos7 ISO not found, downloading...
  wget http://mirrors.kernel.org/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1503-01.iso
else 
  echo Centos7 ISO found!
fi

packer build packer.json
