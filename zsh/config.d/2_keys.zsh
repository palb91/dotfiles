## ZSH key bindings


# Set VI-like bindings
bindkey -v


# Set zkbd compatible hash
typeset -A key
key=(
  'Home'            "${terminfo[khome]}"
  'End'             "${terminfo[kend]}"
  'Home_alt'        '[H'
  'End_alt'         '[F'
  'PageUp'          "${terminfo[kpp]}"
  'PageDown'        "${terminfo[knp]}"
  'Insert'          "${terminfo[kich1]}"
  'Delete'          "${terminfo[kdch1]}"
  'BSpace'          ''
  'C-BSpace'        ''
  'S-Tab'           "${terminfo[kcbt]}"
  'Up'              "${terminfo[kcuu1]}"
  'Down'            "${terminfo[kcud1]}"
  'Up_alt'          '[A'
  'Down_alt'        '[B'
  'C-P'             ''
  'C-N'             ''
  'Colon'           ':'
)


# Load some binding widgets
() {
  local widgets wg
  widgets=(
    up-line-or-beginning-search
    down-line-or-beginning-search
    select-quoted
    select-bracketed
    edit-command-line
  )

  for wg in "${widgets[@]}"
    autoload -Uz "${wg}" && zle -N "${wg}"

  # Specific behavior
  autoload -Uz history-search-end
  zle -N history-beginning-search-backward-end history-search-end
  zle -N history-beginning-search-forward-end  history-search-end
}


# Custom <C-r> behavior (fuzzy)
if (( ${+commands[fzf]} )); then
  history-fzf() {
    BUFFER="$(history -n 1 | fzf --height=15 --tac --query=${LBUFFER})"
    CURSOR="${#BUFFER}"
    zle reset-prompt
  }
  zle -N history-fzf
  key[C-R]=''
fi


# viins mode
() {
  typeset -A actions
  local k

  actions=(
    'Home'          'beginning-of-line'
    'Home_alt'      'beginning-of-line'
    'End'           'end-of-line'
    'End_alt'       'end-of-line'
    'PageUp'        'beginning-of-buffer-or-history'
    'PageDown'      'end-of-buffer-or-history'
    'Insert'        'overwrite-mode'
    'Delete'        'delete-char'
    'BSpace'        'backward-delete-char'
    'C-BSpace'      'backward-delete-word'
    'S-Tab'         'reverse-menu-complete'
    'Up'            'up-line-or-beginning-search'
    'Down'          'down-line-or-beginning-search'
    'Up_alt'        'up-line-or-beginning-search'
    'Down_alt'      'down-line-or-beginning-search'
    'C-P'           'history-beginning-search-backward-end'
    'C-N'           'history-beginning-search-forward-end'
    'C-R'           'history-fzf'
  )

  for k in "${(k)actions[@]}"
    [[ -n "${key[${k}]}" ]] \
      && bindkey -- "${key[${k}]}" "${actions[${k}]}"
}


# vicmd mode
() {
  typeset -A actions
  local k

  actions=(
    'Home'          'vi-beginning-of-line'
    'Home_alt'      'vi-beginning-of-line'
    'End'           'vi-end-of-line'
    'End_alt'       'vi-end-of-line'
    'PageUp'        'beginning-of-buffer-or-history'
    'PageDown'      'end-of-buffer-or-history'
    'Delete'        'vi-delete-char'
    'C-BSpace'      'vi-backward-word'
    'Colon'         'edit-command-line'
  )

  for k in "${(k)actions[@]}"
    [[ -n "${key[${k}]}" ]] \
      && bindkey -Mvicmd "${key[${k}]}" "${actions[${k}]}"
}


# viopp/visual mode
() {
  local mode key

  for mode in visual viopp; do
    for key in {a,i}{\',\",\`}
      bindkey -M$mode $key select-quoted
    for key in {a,i}${(s..)^:-'()[]{}<>bB'}
      bindkey -M$mode $key select-bracketed
  done
}
