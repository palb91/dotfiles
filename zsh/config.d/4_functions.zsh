## ZSH Functions


# Colored man
man() {
  local MANWIDTH=
  [ "$(tput cols)" -gt 100 ] && MANWIDTH=100

  LESS_TERMCAP_md=$'\e[1;34m' \
  LESS_TERMCAP_us=$'\e[4;32m' \
  LESS_TERMCAP_so=$'\e[1;31m' \
  LESS_TERMCAP_me=$'\e[0m'    \
  LESS_TERMCAP_ue=$'\e[0m'    \
  LESS_TERMCAP_se=$'\e[0m'    \
  MANWIDTH="${MANWIDTH}"      \
  command man "${@}"
}


# Few utils
mkcd() { mkdir -p "${1}" && cd "${_}" }
myip() { curl -s monip.org | grep -o 'IP : [0-9.]\+' }
