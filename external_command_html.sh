#!/bin/bash
################################################################################
#
# AUTOR: Micael Perera
# CRIADO EM: 08-2021
# EMPRESA: OpServices
#
################################################################################
#
################################################################################
# COSTANTES
################################################################################
PATH="/var/documentacao/"
FILE=$1
################################################################################
# Rotina principal do programa
################################################################################

if [[ -z "$FILE" ]]
    then
      echo "Arquivo deve ser informado!"
      exit 2
fi

if [[ ! -e "$PATH/$FILE" ]]
    then
      echo "Arquivo informado ($FILE) não existe!"
      exit 2
    else
      /bin/sed -i 's/<?>//g' $PATH/$FILE
      echo "Link: <a href="/opmon/ceee/$FILE" target="_blank">$FILE</a>"
        exit 0
fi
