## ZSH Profile


# Systemd
#systemctl --user import-environment \
#    XDG_CONFIG_HOME                 \
#    XDG_DATA_HOME                   \
#    XDG_CACHE_HOME                  \
#    XDG_RUNTIME_DIR                 \
#    SSH_AUTH_SOCK                   \
#    GPG_TTY                         \
#    GNUPGHOME                       \
#    PASSWORD_STORE_DIR              \
#    DBUS_SESSION_BUS_ADDRESS


# Sway on tty1
[[ ! -v WAYLAND_DISPLAY ]] && [[ ! -v DISPLAY ]] && [[ "${XDG_VTNR}" -eq 1 ]] \
    && exec sway
