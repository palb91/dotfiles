## ZSH Profile


sway() {
    export QT_QPA_PLATFORM=wayland
    export QT_QPA_PLATFORMTHEME=qt5ct
    export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
    export QT_WAYLAND_FORCE_DPI=92
    export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=${XDG_DATA_HOME}"
    export _JAVA_AWT_WM_NONREPARENTING=1
    export path=( "${XDG_CONFIG_HOME}"/sway/bin "${path[@]}" )

    systemctl --user import-environment     \
        QT_QPA_PLATFORM                     \
        QT_QPA_PLATFORMTHEME                \
        QT_WAYLAND_DISABLE_WINDOWDECORATION \
        QT_WAYLAND_FORCE_DPI                \
        _JAVA_OPTIONS                       \
        _JAVA_AWT_WM_NONREPARENTING         \
        PATH

    exec command sway &>"${XDG_CACHE_HOME}"/sway.logs
}

# Sway on tty1
if [[ ! -v WAYLAND_DISPLAY ]] && [[ ! -v DISPLAY ]]; then   # Sway or X running
    [[ "${XDG_VTNR}" -eq 1 ]] && sway                       # tty1
fi
