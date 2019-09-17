#!/bin/sh

BASE=`pwd`
SCRIPT=$BASE/scripts/ext_change.sh

find . -name '*.mag' -execdir $SCRIPT '{}' mag m \;
