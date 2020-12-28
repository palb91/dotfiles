## ZSH Prompt


# PROMPT
typeset -x init_prompt

function set_prompt() {
  local PROMPT_VENV='%F{yellow}≈'

  # Space between prompts (but not at beginning)
  [[ -v init_prompt ]] && unset init_prompt || echo

  # Show venv status, then print prompt colored following return value
  PROMPT="${${VIRTUAL_ENV+${PROMPT_VENV}}:- }"
  PROMPT+='%B%F{%(?,cyan,red)}≡%f%b '
}


# RPROMPT
function set_rprompt() {
  # Print return value if not null
  RPROMPT='%(?,,%B%F{red}%?%b )'

  # Print git status
  if (( ${+commands[git]} )) && git rev-parse &>/dev/null; then
    local git_status="$(git status --porcelain 2>/dev/null)"
    local git_branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
    local git_toplvl="$(git rev-parse --show-toplevel)"
    local git_curdir="$(git rev-parse --show-prefix)"

    [[ -z "${git_status}" ]]              \
      && RPROMPT+='%F{white}⎇  %F{green}' \
      || RPROMPT+='%F{red}× '

    RPROMPT+="${git_branch}"
    RPROMPT+='%f·%B%F{blue}'
    RPROMPT+="${git_toplvl##*/}"
    RPROMPT+='%b%F{cyan}/'
    RPROMPT+="${git_curdir}"

    return
  fi

  # Get current working directory with ~ style
  local cwd=%~; cwd="${(%)cwd}"
  RPROMPT+='%F{cyan}'

  # Add short PWD
  [[ "${#cwd}" -le 20 ]] && RPROMPT+="${cwd}" && return

  # Shorten wider PWD
  local tree=( "${(s:/:)cwd[@]}" )

  # Do not truncate first part of the path
  [[ -z "${tree[1]}" ]]  && RPROMPT+=/ && shift tree
  RPROMPT+="${tree[1]}" && shift tree

  while (( ${#tree} - 1 )); do
    case "${tree[1]}" in
      .*) RPROMPT+="/${tree[1]:0:2}" ;;
       *) RPROMPT+="/${tree[1]:0:1}" ;;
    esac
    shift tree
  done

  RPROMPT+="/${tree[1]}"
  RPROMPT+='%f%b'
}


# Hook functions to precmd
autoload -Uz add-zsh-hook
add-zsh-hook -Uz precmd set_prompt
add-zsh-hook -Uz precmd set_rprompt


# Other prompts
PROMPT2=' %B%F{black}>%f%b '
PROMPT3=' %B%F{black}?%f%b '
unset RPROMPT2
unset RPROMPT3

PROMPT_EOL_MARK='%F{red}%S‡%s%f'
