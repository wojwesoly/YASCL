#!/bin/bash

DIR="/home/wojwesoly/Documents/Notes/YASCL"

for FILE in $DIR/md/*.md; do
    NAME=$(echo -n $FILE | head -c-3)
    PDF_NAME=$(basename $NAME) 
    
    #echo "Creating $NAME.html..."
    #pandoc $FILE -o $NAME.html

    echo "Creating $DIR/pdf/$PDF_NAME.pdf..."
    prince $NAME.html -o $DIR/pdf/$PDF_NAME.pdf

    #echo "NAME: $NAME"
    #echo "PDF_NAME: $PDF_NAME"

done

# .html files are only used for conversion with prince.
echo -e "\nDeleting all .html files..."
#/usr/bin/rm $DIR/md/*.html
