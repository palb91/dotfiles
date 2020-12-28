## ZSH Syntax highlighting


# Load plugin
() {
  local plugin_dir=/usr/share/zsh/plugins/zsh-syntax-highlighting
  local plugin="${plugin_dir}"/zsh-syntax-highlighting.zsh

  [[ -f "${plugin}" ]] || return

  source "${plugin}"

  # Add custom patterns to highlight
  ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets pattern cursor )
  ZSH_HIGHLIGHT_PATTERNS=(
    ' '   'fg=196,underline'
    $'\t' 'fg=235,underline'
  )

  # Set colors
  typeset -A color=(
    'command'  'fg=white,bold'
    'reserved' 'fg=yellow'
    'error'    'fg=red'
    'variable' 'fg=cyan,bold'
    'comment'  'fg=239'
    'string'   'fg=221'
    'special'  'fg=blue'
    'path'     'fg=105,underline'
  )

  ZSH_HIGHLIGHT_STYLES=(
    'default'                         "none"
    'comment'                         "${color[comment]}"

    'arg0'                            "${color[command]}"
    'precommand'                      "${color[command]}"
    'reserved-word'                   "${color[reserved]}"
    'unknown-token'                   "${color[error]}"

    'assign'                          "${color[variable]}"
    'dollar-double-quoted-argument'   "${color[variable]}"

    'double-quoted-argument'          "${color[string]}"
    'single-quoted-argument'          "${color[string]}"
    'dollar-quoted-argument'          "${color[string]}"

    'back-dollar-quoted-argument'     "${color[special]},underline"
    'back-double-quoted-argument'     "${color[special]},underline"
    'back-quoted-argument'            "${color[special]}"
    'back-quoted-argument-delimiter'  "${color[special]}"

    'command-substitution'            "${color[special]},bold"
    'process-substitution'            "${color[special]},bold"
    'command-substitution-delimiter'  ""
    'process-substitution-delimiter'  ""

    'single-hyphen-option'            "${color[special]}"
    'double-hyphen-option'            "${color[special]}"

    'globbing'                        "${color[special]},bold"
    'history-expansion'               "${color[special]},underline"

    'named-fd'                        "${color[special]}"
    'redirection'                     "${color[special]}"
    'commandseparator'                "${color[special]},bold"

    'path'                            "${color[path]}"
    'path_pathseparator'              ""
    'path_prefix_pathseparator'       ""
    'line'                            ""
    'rc-quote'                        ""
    'suffix-alias'                    "${color[reserved]},bold"
    'root'                            ""
    'cursor'                          ""

    'bracket-error'                   "${color[error]}"
#   'bracket-level-1'                 "bold"
    'cursor-matchingbracket'          "standout"
  )
}

