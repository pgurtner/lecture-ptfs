#!/bin/bash

if [[ "$#" < "2" ]]; then
        echo "run.sh needs at least to arguments"
        exit 1
fi

number=$1

re='^[0-9]+$'
if ! [[ $number =~ $re ]]; then
        echo "first argument has to be a number"
        exit 1
fi

shift
for i in `seq $number`; do
        $@
done
