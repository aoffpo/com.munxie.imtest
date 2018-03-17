#!/bin/bash

# ./convert_watermark.sh 
# in the folder with the files you want to convert

brew list ImageMagick || brew install ImageMagick

#for png in *.png
#png="Resources/drawable/icon.png"
for png in Resources/Images.xcassets/*.png
do
   convert  $png \
   -font Verdana -pointsize 14 \
  -fill white  -undercolor '#00000080'  -gravity South \
          -annotate +0+0 'BETA' \
   "$png"_
    echo $png
    mv "$png"_ $png
done