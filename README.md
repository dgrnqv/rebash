# rebash

Adds custom aliases, functions and scripts to the Git Bash shell (Windows).

## Credits

Standing on the shoulders of giants. This project was based on and inspired by [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and [bash-it](https://github.com/revans/bash-it).

## Install

    > git clone https://github.com/mattias-rydengren-stratsys/rebash.git ~/.rebash
    > . ~/.rebash/tools/install.bash
    
## Uninstall

    > . ~/.rebash/tools/uninstall.bash
    
or run

    > rebash uninstall
    
## Custom

For custom aliases, functions and scripts please add `.bash_profile_custom` to your user folder; rebash will source this file, if it exists.

    > touch ~/.bash_profile_custom
