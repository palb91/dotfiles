## ZSH cursor style


# Change cursor shape based on current mode
function zle-keymap-select zle-line-init {
  case "${KEYMAP}" in
    vicmd) printf '\e[2 q' ;;
    *)     printf '\e[6 q' ;;
  esac

  zle reset-prompt
  zle -R
}

function zle-line-finish {
  printf '\e[2 q'
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select
