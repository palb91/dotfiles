## ZSH zsh-z


() {
  local plugin_dir=/usr/share/zsh/plugins/zsh-z
  local plugin="${plugin_dir}"/zsh-z.plugin.zsh

  [[ -f "${plugin}" ]] || return

  ZSHZ_CMD=t
  ZSHZ_DATA="${XDG_DATA_HOME}"/zsh/z.db
  [[ -d "${ZSHZ_DATA%/*}" ]] || mkdir -p "${ZSHZ_DATA%/*}"

  source "${plugin}"
}
