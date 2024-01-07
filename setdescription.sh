#!/usr/bin/env bash

# input
# 1: file name
# 2: description


fn=$1
de=$2

function usage() {

echo "usage:"
echo "-------------------"
echo "setdescription.sh '<path_to_photo>' '<description'"
echo
}





if [[ "$fn" == "" ]] || [[ "$de" == "" ]]; then
    echo "Wrong parameters."
    usage
    exit 1
fi


echo "Before the change: "
/usr/bin/exiftool -ImageDescription "$fn"

/usr/bin/exiftool -ImageDescription="$de" "$fn"
echo "After the change: "
/usr/bin/exiftool -ImageDescription "$fn"

