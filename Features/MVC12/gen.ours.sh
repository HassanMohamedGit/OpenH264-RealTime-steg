#!/bin/bash
cat orig/*  | shuf > orig.txt
cat ours/*  | shuf > steg.txt

