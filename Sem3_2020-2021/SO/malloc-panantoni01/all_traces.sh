#!/bin/bash

for filename in ./traces/*;
do
    echo "\n$filename:"
    ./mdriver -f "$filename"
done

