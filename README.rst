========
Dotfiles
========

   :Author:      palb91
   :OS:          ArchLinux
   :License:     MIT
   :Description: *Personal GNU/Linux configuration*


.. list-table::
   :header-rows: 1

   * - Tool
     - Notes

   * - ``git``
     - **file:** ``$XDG_CONFIG_HOME/git/config``

   * - ``tmux``
     - **file:** ``$XDG_CONFIG_HOME/tmux/tmux.conf``

   * - ``vim``
     - :files:     - ``$XDG_CONFIG_HOME/vim/vimrc``
                   - ``$XDG_CONFIG_HOME/vim/plugin/*``
                   - ``$XDG_CONFIG_HOME/vim/ftplugin/*``
                   - ``$XDG_DATA_HOME/vim`` (``packpath``)
       :``zshrc``: append ``export VIMINIT=":source ${XDG_CONFIG_HOME}/vim/vimrc``

   * - ``zsh``
     - :files:           - ``$XDG_CONFIG_HOME/zsh/.zshenv``
                         - ``$XDG_CONFIG_HOME/zsh/.zprofile``
                         - ``$XDG_CONFIG_HOME/zsh/.zshrc``
                         - ``$XDG_CONFIG_HOME/zsh/config.d/*``
                         - ``$XDG_DATA_HOME/zsh/*`` *(Per-machine configuration)*

       :``/etc/zshenv``: append ``export ZDOTDIR="${HOME}"/.config/zsh``

       :plugin:          https://github.com/agkozak/zsh-z (dir jump)
