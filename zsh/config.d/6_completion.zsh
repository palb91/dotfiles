## ZSH Completion



# Init completion and set cache

() {
  local ZCOMPDUMP="${XDG_CACHE_HOME}"/zsh/zcompcache/zcompdump
  mkdir -p -- "${ZCOMPDUMP%/*}"

  autoload -Uz compinit
  compinit -d "${ZCOMPDUMP}"

  zstyle ':completion:*'          use-cache yes
  zstyle ':completion:*:default'  cache-path "${ZCOMPDUMP%/*}"
}


# Set completion

zmodload zsh/complist
zstyle ':completion:*' menu select

# Visual menu
[[ -n "${LS_COLORS}" ]] \
  && zstyle ':completion:*:default'     list-colors ${(s.:.)LS_COLORS}

# Case insensitive, partial completion
zstyle ':completion:*'                  matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*'                  list-suffixes
zstyle ':completion:*'                  expand prefix suffix

zstyle ':completion:*:correct:*'        insert-unambiguous true
zstyle ':completion:*:correct:*'        original true

# Format style
zstyle ':completion:*:options'          description 'yes'
zstyle ':completion:*:options'          auto-description '%d'
zstyle ':completion:*:messages'         format '%d'
zstyle ':completion:*:corrections'      format $'%{%}%d (errors: %e)'
zstyle ':completion:*:descriptions'     format $'%F{3}completing %B%d%b%f'
zstyle ':completion:*:warnings'         format $'%F{1}No matches for: %f%d'

# Group entryies
zstyle ':completion:*:expand:*'         tag-order all-expansions
zstyle ':completion:*:matches'          group 'yes'
zstyle ':completion:*'                  group-name ''

zstyle ':completion:*:processes'        command 'ps -au${USER}'
zstyle ':completion:*:processes-names'  \
    command 'ps c -u ${USER} -o command | uniq'

zstyle ':completion:*'                  verbose true
zstyle ':completion:*:-command-:*:'     verbose false

zstyle ':completion:*:functions'        ignored-patterns '_*'

zstyle ':completion:*'                  completer _complete _match \
    _approximate
zstyle ':completion:*:match:*'          original only
zstyle ':completion:*:approximate:*'    max-errors 1 numeric
zstyle ':completion:*:approximate:*'    \
    max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

# Man (menu, grouped, section)
zstyle ':completion:*:man:*'            menu yes select
zstyle ':completion:*:manuals'          separate-sections true
zstyle ':completion:*:manuals.*'        insert-sections   true


# Enable bash completion compatibility
autoload -Uz bashcompinit && bashcompinit
