ORIGINAL_IFS=$IFS
IFS=$(echo -en "\n\b")
 
for script_file_type in "lib" "aliases" "functions"; do
    if [ ! -d ~/.rebash/${script_file_type} ]; then
		continue;
    fi

    for script_file in ~/.rebash/${script_file_type}/*.bash; do
		source $script_file
    done
done

if [ -d ~/.rebash/scripts ]; then
    for script_file in ~/.rebash/scripts/*.bash; do
        script=${script_file##*/}
        target="/usr/bin/${script/.bash/}"
        
        if [ -e $target ]; then
            rm $target
        fi
        
        ln -s $script_file $target
    done
fi
 
IFS=$ORIGINAL_IFS