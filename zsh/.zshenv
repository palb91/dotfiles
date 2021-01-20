## ZSH Environment variables


# XDG
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/tmp/.${USER}-runtime}"
export XDG_CURRENT_DESKTOP=sway


# Sockets
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}"/gnupg/S.gpg-agent.ssh
export TMUX_TMPDIR="${XDG_RUNTIME_DIR}/tmux"


# Tools variables
export GPG_TTY="${GPG_TTY:-$(tty)}"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME}/password-store"
export VIMINIT=":source ${XDG_CONFIG_HOME}/vim/vimrc"


# export to systemd
systemctl --user import-environment \
    XDG_CONFIG_HOME                 \
    XDG_DATA_HOME                   \
    XDG_CACHE_HOME                  \
    XDG_CURRENT_DESKTOP             \
    GPG_TTY                         \
    SSH_AUTH_SOCK                   \
    PASSWORD_STORE_DIR


# PATH
declare -Ux path PATH
path=( "${HOME}/.local/bin" "${path[@]}" )
