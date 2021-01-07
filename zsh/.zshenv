## ZSH Environment variables


# XDG
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/tmp/.${USER}-runtime}"


# Sockets
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
export TMUX_TMPDIR="${XDG_RUNTIME_DIR}/tmux"


# Tools variables
export GPG_TTY="${GPG_TTY:-$(tty)}"
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME}/password-store"
export VIMINIT=":source ${XDG_CONFIG_HOME}/vim/vimrc"


# export to systemd
systemctl --user import-environment \
    GPG_TTY                         \
    GNUPGHOME                       \
    SSH_AUTH_SOCK                   \
    PASSWORD_STORE_DIR


# PATH
declare -Ux path PATH
path=( "${HOME}/.local/bin" "${path[@]}" )
