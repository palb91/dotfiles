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


sway() {
    export QT_QPA_PLATFORM=wayland
    export QT_QPA_PLATFORMTHEME=qt5ct
    export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
    export QT_WAYLAND_FORCE_DPI=92
    export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=${XDG_DATA_HOME}"
    export _JAVA_AWT_WM_NONREPARENTING=1
    export path=( "${XDG_CONFIG_HOME}"/sway/bin "${path[@]}" )

    exec command sway
}

# Sway on tty1
if [[ ! -v WAYLAND_DISPLAY ]] && [[ ! -v DISPLAY ]]; then   # Sway or X running
    [[ "${XDG_VTNR}" -eq 1 ]] && sway                       # tty1
fi
