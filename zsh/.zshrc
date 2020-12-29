## ZSHRC



# -- Init

[[ -d "${XDG_CACHE_HOME}"/zsh ]] && mkdir -p "${XDG_CACHE_HOME}"/zsh



# -- Options

# Changing Directories
setopt AUTO_CD              # `cd cmd` if cmd is a dir AND not a command
setopt AUTO_PUSHD           # cd push OLDPWD onto the dir stack

# Completion
setopt COMPLETE_IN_WORD     # Complete from both ends of cursor
setopt GLOB_COMPLETE        # Complete instead of insert glob expansion
setopt HASH_LIST_ALL        # Hash PATH before first completion
setopt LIST_PACKED          # Completion with different columns width
setopt LIST_ROWS_FIRST      # Completion list horizontally
setopt MENU_COMPLETE        # Start completion on first <Tab> hit

# Expansion and Globbing
setopt EXTENDED_GLOB        # Treat `#^~` as part of patterns
setopt NO_GLOB_DOTS         # Don't match `.*` with '*'
setopt MARK_DIRS            # Append / to expanded dir names on <Tab> hit

# History
setopt EXTENDED_HISTORY     # Timestamps in HISTFILE
setopt NO_HIST_BEEP         # Disable beep concerning history
setopt HIST_FCNTL_LOCK      # Performance setting
setopt HIST_IGNORE_ALL_DUPS # Remove older dups of last command
setopt HIST_IGNORE_DUPS     # Don't store cmd if dups of the previous cmd
setopt HIST_IGNORE_SPACE    # Ignore cmd/aliases starting with a space
setopt HIST_NO_STORE        # Remove history (fc -l) from history list
setopt HIST_REDUCE_BLANKS   # Remove superfluous blanks
setopt SHARE_HISTORY        # Share HISTFILE between all zsh sessions

# Input/Output
setopt NO_FLOW_CONTROL      # Disable flow control (^Q/^S)
setopt INTERACTIVE_COMMENTS # Comments in shell
setopt RM_STAR_SILENT       # No validation required for `rm *`

# Job Control
setopt AUTO_CONTINUE        # Stopped jobs are resumed on `disown`
setopt AUTO_RESUME          # Use simple cmd (no args) to resume existing jobs
setopt LONG_LIST_JOBS       # Print PID when a job exit

# Prompting
# setopt PROMPT_SUBST         # Allow shell expansion in prompt
setopt TRANSIENT_RPROMPT    # Clear previous RPROMPT

# Shell Emulation
setopt KSH_OPTION_PRINT     # Show all options with on/off mark

# Zle
setopt BEEP                 # Disable beep for zle widgets



# -- Parameters

EDITOR=vim
PAGER=less
VISUAL="${EDITOR}"
READNULLCMD="${PAGER}"

LANG=en_US.UTF-8
LC_COLLATE=C
LC_MESSAGES=C

HISTFILE="${XDG_CACHE_HOME}/zsh/history"
HISTSIZE=10000
SAVEHIST=10000
HISTORY_IGNORE='(fc|cd|cdr|bg|fg|jobs)'

KEYTIMEOUT=10



# -- Shell utilities environment variables

export LESS='--RAW-CONTROL-CHARS --LONG-PROMPT --ignore-case --tabs=4'
export LESSHISTFILE=-
export MAKEFLAGS=-j2
export VIMINIT=":source ${XDG_CONFIG_HOME}/vim/vimrc"



# -- Color in terminal

export CLICOLOR=1

if (( ${+commands[dircolors]} )); then
  eval -- "$(dircolors --bourne-shell)"
  [[ -z "$LS_COLORS" ]] && unset LS_COLORS
fi



# -- Load more configuration

() {
  local cfg src
  src=(
    "${ZDOTDIR}"/config.d/*.zsh         # Base config
    "${XDG_DATA_HOME}"/zsh/*.zsh(DN)    # Per machine config
  )

  for cfg in "${src[@]}"; source "${cfg}"
}
