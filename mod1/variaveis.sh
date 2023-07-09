#!/usr/bin/env bash


NOME= "Bruno Luiz"
echo $NOME

NUMERO_1=25
NUMERO_2=25
TOTAL= $(($NUMERO_1+$NUMERO_2))
echo "$TOTAL"

SAIDA_CAT=$(cat /etc/passwd | grep bruno)
echo "$SAIDA_CAT"

echo "*------------NOVA_AULA-------------*"

echo "parametro 1: $1"
echo "parametro 2: $2"
echo "Todos os parametros: $*"
echo "Quantos parametros enviados? $#"
echo "Saida do ultimo comando: $?"
echo "PID: $$"
echo "$0" 
