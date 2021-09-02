#!/bin/bash

################################################################################
#
# AUTOR: Micael Pereira
# CRIADO EM: 31/08
# EMPRESA: OpServices
#
################################################################################
PATH="nagios-plugins-2.2.1.tar.gz"
PLUGINS="https://nagios-plugins.org/download/nagios-plugins-2.2.1.tar.gz"
AGENT="nagios-plugins-2.2.1.tar.gz"


cd /tmp;

yum install wget

wget https://nagios-plugins.org/download/nagios-plugins-2.2.1.tar.gz;
wget --no-check-certificate https://downloads.sourceforge.net/project/nagios/nrpe-2.x/nrpe-2.15/nrpe-2.15.tar.gz;

adduser opuser -d /usr/local/opmon -g users -s /bin/bash -c "OpMon NRPE"

passwd opuser

yum install net-snmp-utils.x86_64 -y

yum install gcc.x86_64 -y

yum install openssl-devel.x86_64 -y

yum install xinetd.x86_64 -y

systemctl enable xinetd.service

yum install tar -y

tar -xvzf nagios-plugins*

tar -xvzf nrpe*

