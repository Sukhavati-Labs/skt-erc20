#!/bin/bash

set -e

CONTRACTS="$@"
for c in $CONTRACTS
do
	if [ ! -f build/contracts/${c}.json ]
	then
		echo "Skiping $c file..."
		continue
	fi
    bash -c "cat build/contracts/${c}.json | jq .abi > abi/${c}.json"
done
