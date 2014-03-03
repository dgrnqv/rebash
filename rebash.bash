ORIGINAL_IFS=$IFS
IFS=$(echo -en "\n\b")
 
source ~/.rebash/rebash.command.bash
 
for script_file_type in "config" "lib" "aliases" "functions"; do
    if [ ! -d ~/.rebash/${script_file_type} ]; then
		continue;
    fi

    for script_file in ~/.rebash/${script_file_type}/*.bash; do
        source $script_file
    done
done

if [ -d ~/.rebash/scripts ]; then
    for dir in ~/.rebash/scripts/*; do
        for script_file in ${dir}/*.bash; do
            script=${script_file##*/}
            target="/usr/bin/${script/.bash/}"
            
            if [ -e $target ]; then
                rm $target
            fi
            
            ln -s $script_file $target
        done
    done
fi

if [[ -e ~/.bash_profile_custom ]]; then
    source ~/.bash_profile_custom
fi

IFS=$ORIGINAL_IFS

# check for new version of rebash.
rebash go
count=$(git rev-list head...origin/master --count)
if [[ $count -ne 0 ]]; then
    echo -e "\033[00;32mA new version of 'rebash' is available. Use 'rebash update' to update.\033[0m";
fi
rebash return