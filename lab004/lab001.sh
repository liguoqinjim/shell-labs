#!/bin/bash

cmp --silent $1 $2 && echo 'Files Are Identical!' || echo 'Files Are Different!'