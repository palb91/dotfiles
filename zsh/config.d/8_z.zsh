## ZSH zsh-z


plugin=/usr/share/zsh/plugins/zsh-z/zsh-z.plugin.zsh

if [[ -f "${plugin}" ]]; then
  ZSHZ_CMD=t
  ZSHZ_DATA="${XDG_DATA_HOME}"/zsh/z.db
  ZSHZ_CASE=smart
  [[ -d "${ZSHZ_DATA%/*}" ]] || mkdir -p "${ZSHZ_DATA%/*}"
  source "${plugin}"
fi
