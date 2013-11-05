alias sites='cd ~/Sites'
alias sc='cd ~/Sites/solarcity/SolarCity.Web'
alias scpub='cd ~/Sites/scpub'
alias scbas='cd ~/Sites/scpub/sites/all/themes/basic'
alias car='cd ~/Sites/solarcity/SolarCity.Web.Carrier'
alias sp='cd ~/Sites/scpub/sites/all/themes/scpublic'
alias docs='cd ~/Documents'
alias vol='cd /Volumes'
alias sw='sass --watch'
alias shscstaging='ssh jmarshall@slc6mrk00.solarcity.com'
alias news='cd ~/Sites/moeo-bk/news/'
alias nuke='rm -rf'
alias mm='middleman'
alias mmgo='bundle exec middleman'
alias moeonews='cd ~/Sites/moeo-bk/news'
alias news='cd ~/Sites/moeo-bk/news/wp-content/themes/moeo'

#git
alias gc='git commit -am'
alias ga='git add -A'
alias gp='git push'
alias gpr='git pull --rebase'
alias gf='git fetch'
alias gs='git status'
#alias gl='git log --pretty=oneline --graph --decorate --all'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#sass
alias sw='sass --watch sass/:css/'
#coffee
alias cfw='coffee -o js/ -cw coffee/'
#compass
alias cmw='compass watch' 


export TERM='xterm-color'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin

PS1="\n\[\033[1;3m\]\h\[\033[m\][\[\033[1;32m\]\u\[\033[m\]]💔 \n\033[1;35m\]\$PWD\[\033[m\]: " 


#functions
function testcp(){
  cd ~/Sites/bash
  cp test.css test/tester/boomtown/test
  echo 'done deal'
}
