httpless() {
  http --pretty=all --print=hb "$@" | less -R;
}
