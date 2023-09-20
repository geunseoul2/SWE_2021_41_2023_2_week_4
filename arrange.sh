#!/bin/bash

for file in files/*; do
    filename=$(basename "$file")
    first_letter=${filename:0:1}

    if [[ $first_letter =~ [a-zA-Z] ]]; then
        mv "$file" "${first_letter,,}"/
    fi
done