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

   * - ``davmail``
     - :file: - ``$XDG_CONFIG_HOME/davmail/config``
       :url:  - Replace ``davmail.url`` with corporate url.

   * - ``foot``
     - **file:** ``$XDG_CONFIG_HOME/foot/foot.ini``

   * - ``git``
     - **file:** ``$XDG_CONFIG_HOME/git/config``

     - ``i3status``
     - :file:    ``$XDG_CONFIG_HOME/i3status/config``
       :sway:    Run with a python wrapper: ``swaystatus``

   * - ``kanshi``
     - **file:** ``$XDG_CONFIG_HOME/kanshi/config``

   * - ``mako``
     - **file:** ``$XDG_CONFIG_HOME/mako/config``

   * - ``ncpamixer``
     - **file:** ``$XDG_CONFIG_HOME/ncpamixer.conf``

   * - ``qutebrowser``
     - :file: - ``$XDG_CONFIG_HOME/qutebrowser/config.py``
              - ``${XDG_CONFIG_HOME/qutebrowser/keys.cfg``

   * - ``tmux``
     - **file:** ``$XDG_CONFIG_HOME/tmux/tmux.conf``

   * - ``sway``
     - :files: - ``$XDG_CONFIG_HOME/sway/config``
               - ``$XDG_CONFIG_HOME/sway/config.d/*``
               - ``$XDG_CONFIG_HOME/sway/bin/*``

   * - ``swayidle``
     - **file:** ``$XDG_CONFIG_HOME/swayidle/config``

   * - ``swaylock``
     - **file:** ``$XDG_CONFIG_HOME/swaylock/config``

   * - ``systemd``
     - :files: - ``$XDG_CONFIG_HOME/systemd/bin/*`` (scripts related to systemd only)
               - ``$XDG_CONFIG_HOME/systemd/user/*`` (services and timers)

   * - ``vim``
     - :files: - ``$XDG_CONFIG_HOME/vim/vimrc``
               - ``$XDG_CONFIG_HOME/vim/plugin/*``
               - ``$XDG_CONFIG_HOME/vim/ftplugin/*``
               - ``$XDG_DATA_HOME/vim`` (``packpath``)

   * - ``xdg``
     - :files: - ``$XDG_CONFIG_HOME/user-dirs.dirs``
                 ``$XDG_CONFIG_HOME/user-dirs.locale``

   * - ``zathura``
     - **file:** ``$XDG_CONFIG_HOME/zathura/zathurarc``

   * - ``zsh``
     - :files:           - ``$XDG_CONFIG_HOME/zsh/.zshenv``
                         - ``$XDG_CONFIG_HOME/zsh/.zprofile``
                         - ``$XDG_CONFIG_HOME/zsh/.zshrc``
                         - ``$XDG_CONFIG_HOME/zsh/config.d/*``
                         - ``$XDG_DATA_HOME/zsh/*`` *(Per-machine configuration)*

       :``/etc/zshenv``: append ``export ZDOTDIR="${HOME}"/.config/zsh``

       :plugin:          https://github.com/agkozak/zsh-z (dir jump)
