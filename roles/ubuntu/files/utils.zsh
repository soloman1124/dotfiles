httpless() {
  http --pretty=all --print=hb "$@" | less -R;
}

alias open=explorer.exe
