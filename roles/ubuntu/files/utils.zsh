httpless() {
  http --pretty=all --print=hb "$@" | less -R;
}

# https://devblogs.microsoft.com/commandline/memory-reclaim-in-the-windows-subsystem-for-linux-2/
_wsl_free() {
  sudo sh -c "/bin/echo 1 > /proc/sys/vm/compact_memory"
}

_fix_zsh_history() {
  mv ~/.zsh_history ~/.zsh_history_bad
  strings ~/.zsh_history_bad > ~/.zsh_history
  fc -R ~/.zsh_history
  rm ~/.zsh_history_bad
}

alias open=explorer.exe

alias wsl_free=_wsl_free

alias fix_zsh_history=_fix_zsh_history
