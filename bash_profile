export EDITOR='mate -w'
export SVN_EDITOR='mate -w'
export RAILS_ENV=development

# Show Git branch in terminal
#----------
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\w\$(parse_git_branch) $ "

# Aliases
#----------
# Synergy
alias synergy='/Applications/Synergy/synergys -f --config /Applications/Synergy/synergy.conf'

# Rails
alias ss='script/server'
alias sc='script/console'
alias sg='script/generate'
alias sp='script/plugin'
 
# Git
alias ga='git add'
alias gco='git checkout'
alias gc='git commit -v'
alias gb='git branch'
alias gba='git branch -a'
alias gd='git diff'
alias gl='git log'
alias gpl='git pull'
alias gp='git push'
alias gst='git status'
alias gw='git whatchanged'
alias gr='git rebase'

#Compass/Sass
alias setupsass='compass --sass-dir=sass --css-dir=css --javascripts-dir=js --output-style=nested assets'

# ?
#----------
test -r /sw/bin/init.sh && . /sw/bin/init.shm

# Custom path for ruby install
#export PATH="/Users/dsutoyo/.gem/ruby/1.8/bin:/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export ARCHFLAGS="-arch x86_64"

# MacPorts
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export MANPATH=$MANPATH:/opt/local/share/man