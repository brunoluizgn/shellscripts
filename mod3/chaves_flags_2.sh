#!/usr/bin/env bash

#!/usr/bin/env bash

#listarUsuarios.sh - Extrai usuários do /etc/passwd

#Site: https://borenore.com.br
#Autor: Bruno Luiz
#Manutenção: Bruno Luiz
#--------------------------------------------------------------------------------------------#
#Irá extrar  usuários do /etc/passwd, havendo a possibilidade de colocar em maiúsculo e 
#em ordem alfabética
#
#Exemplo:
#   $ ./listarUsuarios.sh -s -m
#   Neste exemplo ficará em maiúscula e em ordem alfabética 
#----------------------------------------------------------------------------------------------#
#Histórico:
#   
#   v1.0 17/07/2023, Bruno Luiz:
#   - 
#----------------------------------------------------------------------------------------------#
#Testadi en:
#   GNU bash, versão 5.0.17(1)-release (x86_64-pc-linux-gnu)
#
#----------------------------------------------------------------------------------------------#

#----------------------------------VARIAVEIS----------------------------------------------------#
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
    $0 - [OPÇÕES]

 -h - Menu de ajuda
 -v - Versão
 -s - Ordernar a saída
"
VERSAO="V1.0"

#----------------------------------------EXECUÇÃO------------------------------------------------------#
if [ "$1" = "-h" ]; then 
    echo "$MENSAGEM_USO" && exit 0
fi
if [ "$1" = "-v" ]; then 
    echo "$VERSAO" && exit 0
fi
if [ "$1" = "-s" ]; then 
    echo "$USUARIOS"  | sort && exit 0
fi

echo "$USUARIOS"