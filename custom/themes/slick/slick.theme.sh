SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""

SCM_THEME_PROMPT_DIRTY=" ${bold_red}✗${normal}"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓${normal}"

SCM_GIT_CHAR="${bold_blue}${normal}"
SCM_SVN_CHAR="${bold_green}⑆${normal}"
SCM_HG_CHAR="${bold_red}☿${normal}"

SCM_NPM_CHAR="${bold_red}📦${normal}"

#Mysql Prompt
export MYSQL_PS1="(\u@\h) [\d]> "

case $TERM in
  xterm*)
  TITLEBAR="\[\033]0;\w\007\]"
  ;;
  *)
  TITLEBAR=""
  ;;
esac

PS3=">> "

__my_venv_prompt() {
  if [ ! -z "$VIRTUAL_ENV" ]
  then
    echo "[${blue}@${normal}${VIRTUAL_ENV##*/}]"
  fi
}

is_vim_shell() {
  if [ ! -z "$VIMRUNTIME" ]
  then
    echo "[${cyan}vim shell${normal}]"
  fi
}

modern_scm_prompt() {
  CHAR=$(scm_char)
  if [ $CHAR = $SCM_NONE_CHAR ]
  then
    return
  else
    echo "[$(scm_char)][$(scm_prompt_info)]"
  fi
}

package_name() {
  FILE=package.json
  if test -f "$FILE"; then
    PACKAGE_NAME=$(cat package.json \
      | grep \"name\" \
      | head -1 \
      | awk -F: '{ print $2 }' \
      | sed 's/[",]//g')
    echo $PACKAGE_NAME
  else
    return  
  fi
}

prompt() {
  my_ps_user="\[\033[01;32m\]\u\[\033[00m\]";
  my_ps_root="\[\033[01;31m\]\u\[\033[00m\]";
  my_ps_path="\[\033[00;35m\]\w\[\033[00m\]";
  
  FILE=package.json
  if test -f "$FILE"; then
    my_package_name="[$SCM_NPM_CHAR][${bold_cyan}$(package_name)${normal}]"
  else
    my_package_name=""
  fi

  case "`id -u`" in
    0) PS1="${TITLEBAR}[$my_ps_root]$my_package_name$(modern_scm_prompt)[$my_ps_path]$(is_vim_shell)
$ "
    ;;
    *) PS1="${TITLEBAR}[$my_ps_user]$my_package_name$(modern_scm_prompt)[$my_ps_path]$(__my_venv_prompt)$(is_vim_shell)
$ "
    ;;
  esac
}

PS2="> "



safe_append_prompt_command prompt
