local current_dir='${PWD/~}'


#PROMPT="%{$terminfo[bold]$fg[green]%}${bg[blue]}[${current_dir}]%{$reset_color%} $fg[yellow]%}%D{%I:%M:%S%p}%{$reset_color%}"



function hms {
	echo "%D{%I:%M:%S%p}"
}

function location {
	echo "$PWD"
}

function newline {
	echo "\n"
}

### GIT ###

function __git_prompt {
  local DIRTY="%{$FG[202]%}%{$BG[052]%}"
  local CLEAN="%{$FG[154]%}%{$BG[022]%}"
  local UNMERGED="%{$FG[227]%}%{$BG[136]%}"
  local RESET="%{$terminfo[sgr0]%}"
  git rev-parse --git-dir >& /dev/null
  if [[ $? == 0 ]]
  then
    echo -n "%{$FG[051]%}|%{$reset_color%}"
    if [[ `git ls-files -u >& /dev/null` == '' ]]
    then
      git diff --quiet >& /dev/null
      if [[ $? == 1 ]]
      then
        echo -n $DIRTY
      else
        git diff --cached --quiet >& /dev/null
        if [[ $? == 1 ]]
        then
          echo -n $DIRTY
        else
          echo -n $CLEAN
        fi
      fi
    else
      echo -n $UNMERGED
    fi
    echo -n `git branch | grep '* ' | sed 's/..//'`
    echo -n $RESET
    echo -n "%{$FG[051]%}|%{$reset_color%}"
  fi
}
##############

#"%{$FG[190]%}✭%{$reset_color%}"

PROMPT='%{$FG[051]%}|%{$reset_color%}\
%{$FG[051]%}%{$BG[017]%}$(location)%{$reset_color%}\
%{$FG[051]%}||%{$reset_color%}\
%{$FG[051]%}%{$BG[017]%}$(hms)%{$reset_color%}\
%{$FG[051]%}|%{$reset_color%}\
$(__git_prompt)
💎  '




