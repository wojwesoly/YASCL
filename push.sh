#/bin/bash

read -p "Did you convert all the .md files to .html [y/N]? " ans
ans=${ans:-n}

if [ "$ans" = "y" ]; then
    ./md/convert.sh
    
    git commit -am $1
    git push
fi
