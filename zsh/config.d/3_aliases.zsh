## ZSH aliases


# Define aliases
() {
  local _alias _cmd

  typeset -A _aliases=(
    sudo   'sudo '
    ls     'ls --color=auto --group-directories-first -p'
    l      'ls'
    ll     'ls -lArth'
    la     'ls -A'
    grep   'grep --color=auto -I --exclude-dir=.git'
    rg     'grep -r'
    dd     'dd status=progress'
    diff   'diff --color=auto'
    ccat   'bat -pp'
    r      'ranger'
    o      'rifle'
    sysu   'systemctl --user'
    Mount  'udevil mount'
    UMount 'udevil umount'
  )

  for _alias _cmd in "${(kv)_aliases[@]}";
    (( ${+commands[${_cmd%% *}]} )) && alias "${_alias}=${_cmd}"

  return
}
