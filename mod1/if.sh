#!/usr/bin/env bash

VAR="1"
VAR2="1"

if [[ "$VAR" = "$VAR2" ]]; then 
    echo "São iguais"
fi

if [[ "$VAR" = "$VAR2" ]]
then 
    echo "São iguais"
fi

if test "$VAR" = "$VAR2"
then 
    echo "São iguais"
fi

if [ "$VAR" = "$VAR2" ]
then 
    echo "São iguais"
fi

[ "$VAR" = "$VAR2" ] && echo "São iguais"
