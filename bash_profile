# Basic environment
export PS1='\[\e]1;\]$(basename $(dirname $PWD))/\W\[\a\]\u@\h \W\$ '
export EDITOR=/usr/bin/nano

# My aliases
alias l="ls -FG"
alias ll="ls -lhFG"
alias la="ls -ahFG"
alias lal="ls -lahFG"
alias rm='rm -i'
alias d="pwd && echo & ls -FG"

# My path
export PATH=~/bin:~/.cljr/bin:$PATH:~/src/relevance/etc/scripts

# for MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

# for PostgreSQL 8.4 installed via MacPorts
export PATH=$PATH:/opt/local/lib/postgresql84/bin

# for Perl5 / CPAN
export PERL5LIB="/opt/local/lib/perl5/5.8.8:/opt/local/lib/perl5/site_perl/5.8.8:/opt/local/lib/perl5/vendor_perl/5.8.8"

# for Java JDK 1.6
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
alias java6=$JAVA_HOME/bin/java
alias javac6=$JAVA_HOME/bin/javac

alias truecrypt="/Applications/TrueCrypt.app/Contents/MacOS/TrueCrypt -t"

# Local system stuff
if [ -e ~/.bash_local ]; then
    source ~/.bash_local
fi

# Relevance "etc" scripts
source ~/src/relevance/etc/bash/git.sh
source ~/src/relevance/etc/bash/git_autocompletion.sh
source ~/src/relevance/etc/bash/git_installer.sh
source ~/src/relevance/etc/bash/git_prompt.sh
source ~/src/relevance/etc/bash/ssh_autocompletion.sh

# RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm