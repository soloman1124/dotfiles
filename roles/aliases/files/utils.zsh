httpless() {
  http --pretty=all --print=hb "$@" | less -R;
}

alias say=spd-say
alias open=xdg-open
