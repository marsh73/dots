alias sites='cd ~/Sites'
alias docs='cd ~/Documents'
alias vol='cd /Volumes'
alias nuke='rm -rf'
alias mm='middleman'
alias mmgo='bundle exec middleman'

#git
alias gc='git commit -am'
alias ga='git add -A'
alias gp='git push'
alias gpr='git pull --rebase'
alias gf='git fetch'
alias gs='git status'
alias gch='git checkout'
#alias gl='git log --pretty=oneline --graph --decorate --all'
#alias gl='git log --oneline --graph --decorate'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(red)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gb='git branch'
alias gnuke='git branch -D'
alias gd='git diff'
alias gdn='git diff --name-only'
#autocomplate
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


#solutionset
alias sshsndev='ssh jmarshall@cq.servicenow.d.solutionset.com'
alias sshsnphp='ssh jmarshall@servicenow.devphp21.solutionset.com'

#sass
alias sw='sass --watch sass/:css/'
#coffee
alias cfw='coffee -o js/ -cw coffee/'
#compass
alias cmw='compass watch' 

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export MAVEN_OPTS="-Xms1024m -Xmx1024m"
export M2_HOME=/Users/justin.marshall/Sites/Devel/apache-maven-3.0.5
export M2_REPO=/Users/justin.marshall/.m2
export PATH=/bin:/usr/local/bin:/usr/local/sbin:$PATH:$M2_HOME/bin:/usr/local/share/npm/bin:/usr/bin

export TERM='xterm-color'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

PS1="\n\[\033[1;3m\]\h\[\033[m\][\[\033[1;32m\]\u\[\033[m\]]💔 \n\033[1;35m\]\$PWD\[\033[m\]: " 

#PS1="\n\[\033[1;3m\]\h\[\033[m\][\[\033[1;32m\]\u\[\033[m\]]💔 \n\[\033[1;35m\]\$PWD\[\033[m\]: "



function mkgo(){
	mkdir $1 && cd $1
}



#run middleman server 

function midl {
	cd ~/Sites/$1
	middleman
}
function snrun {
	cd ~/Sites/servicenow/fe_templates
	middleman
}

function snbuild {
	cd ~/Sites/servicenow/fe_templates
	middleman build
	cp -r build/js ../wcm/servicenow-view/src/jcr_root/etc/designs/servicenow/static
	cp -r build/fonts ../wcm/servicenow-view/src/jcr_root/etc/designs/servicenow/static
	cp -r build/css ../wcm/servicenow-view/src/jcr_root/etc/designs/servicenow/static
	rsync -a --exclude '*client*' --exclude '*hero*' build/img ../wcm/servicenow-view/src/jcr_root/etc/designs/servicenow/static
}




