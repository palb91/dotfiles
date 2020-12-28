## ZSH Environment variables


# XDG
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/tmp/.${USER}-runtime}"


# Sockets
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
export TMUX_TMPDIR="${XDG_RUNTIME_DIR}/tmux"


# gnupg/pass
export GPG_TTY="${GPG_TTY:-$(tty)}"
export GNUPGHOME="${XDG_CONFIG_HOME}/gnupg"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME}/password-store"


# PATH
declare -Ux path PATH
path=( "${HOME}/.local/bin" "${path[@]}" )
