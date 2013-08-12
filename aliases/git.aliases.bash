alias ga='git add --all'
alias gam='git commit --amend --reuse-message HEAD'

alias gb='git branch --verbose'
alias gbb='git branch'

alias gc='git commit --message'

alias gco='git checkout'
alias gcob='git checkout -b'

__git_complete gco _git_checkout
__git_complete gcob _git_checkout

alias gl='git log --abbrev-commit --graph --format=oneline'
alias glg='git log --abbrev-commit --format=oneline | grep'
alias gll='git log'

__git_complete gl _git_log
__git_complete glg _git_log
__git_complete gll _git_log

alias gp='git pull --ff-only'
alias gpl='git pull --ff-only'
alias gpo='git push origin'

alias gs='git status --short --branch'
alias gss='git status'


alias gco53='git checkout 5.3/master && gpl' 
alias gco54='git checkout 5.4/master && gpl'
alias gco55='git checkout 5.5/master && gpl'
alias gcodev='git checkout dev/master && gpl'
alias gcovn='git checkout vnext/master && gpl'