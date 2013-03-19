#!/bin/sh



echo Generating binary files of many sizes in static/data

mkdir -p static/data

dd if=/dev/urandom of=static/data/1MB.bin bs=1048576 count=1
dd if=/dev/urandom of=static/data/5MB.bin bs=1048576 count=5
dd if=/dev/urandom of=static/data/10MB.bin bs=1048576 count=10
dd if=/dev/urandom of=static/data/25MB.bin bs=1048576 count=25

ls -latrh static/data/*
