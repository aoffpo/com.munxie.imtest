#!/bin/bash

# ./convert_icon_color.sh 
# in the folder with the files you want to convert

brew list ImageMagick || brew install ImageMagick

ORANGE="rgb(255,106,0)"
AEBLUE="rgb(16,87,123)"

#png="../Resources/drawable/icon.png"
for png in Resources/Images.xcassets/*.png
do
    # To, From
    convert $png -fuzz 20% -fill $ORANGE -opaque $AEBLUE "$png"_
    echo $png
    mv "$png"_ $png
done