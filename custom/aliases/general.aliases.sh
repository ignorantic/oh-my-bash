#!/usr/bin/env bash
#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all general BASH aliases
#
#  For your own benefit, we won't load all aliases in the general, we will
#  keep the very generic command here and enough for daily basis tasks.
#
#  If you are looking for the more sexier aliases, we suggest you take a look
#  into other core alias files which installed by default.
#
#  ---------------------------------------------------------------------------

#   -----------------------------
#   1.  MAKE TERMINAL BETTER
#   -----------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -lAFh'                         # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias nano='nano -W'                        # Preferred 'nano' implementation
alias wget='wget -c'                        # Preferred 'wget' implementation (resume download)
alias c='clear'                             # c:            Clear terminal display
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
alias src='source ~/.bashrc'                # src:          Reload .bashrc file

#   -----------------------------
#   2.  GIT
#   -----------------------------

alias gs='git status'
alias gh='git hist'

#   -----------------------------
#   2.  GO TO DIR
#   -----------------------------

alias gou='cd ~/prjs/underflower'
alias gojc='cd ~/prjs/jetskipro-client'
alias goja='cd ~/prjs/jetskipro-admin'
alias gojb='cd ~/prjs/jetskipro-api'
alias gojt='cd ~/prjs/jetskipro-tools'
alias gorw='cd ~/prjs/railway-client'
alias gotc='cd ~/prjs/typechess'
alias gotr='cd ~/prjs/traffic-cloud/dev/new_frontend'
alias goomb='cd ~/.oh-my-bash'

#   -----------------------------
#   3.  YARN
#   -----------------------------

alias ya='yarn add'
alias yr='yarn remove'

#   -----------------------------
#   4.  SSH
#   -----------------------------

alias sshdev='ssh devteam@94.23.147.119'
alias sshven='ssh vendetta@94.23.147.119'
alias sshu='ssh vskolos@92.53.96.13'
alias sshtr='ssh root@devel.infraforecast.info'

alias uu='sudo snap refresh && sudo apt update && sudo apt dist-upgrade'

alias rcb='vim ~/.bashrc'
alias rcv='vim ~/.vimrc'

alias cda='composer dumpautoload'
alias amf='cda && sudo -u www-data php artisan migrate:fresh --seed'
alias ss='eval `ssh-agent -s` && ssh-add'

