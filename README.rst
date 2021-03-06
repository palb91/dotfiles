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
     - - The configuration is in ``$XDG_CONFIG_HOME/davmail/config``.
       - Edit ``davmail.url`` in configuration.
       - Run ``systemctl --user enable --now davmail``.

   * - ``flake8``
     - Integrated in ``vim``

   * - ``foot``
     -

   * - ``git``
     -

   * - ``i3blocks``
     -

   * - ``mako``
     -

   * - ``ncpamixer``
     -

   * - ``ncspot``
     -

   * - ``qutebrowser``
     - Key mapping is in ``${XDG_CONFIG_HOME/qutebrowser/keys.cfg``

   * - ``tmux``
     -

   * - ``swappy``
     -

   * - ``sway``
     -

   * - ``swayidle``
     -

   * - ``swaylock``
     -

   * - ``systemd``
     - Scripts are in ``$XDG_CONFIG_HOME/systemd/bin/*``

   * - ``vim``
     - - ``git clone https://github.com/Jorengarenar/minPlug
         "${XDG_DATA_HOME}/vim/pack/plugins/opt/minPlug"``
       - ``vim +MinPlugInstall +q``

   * - ``xdg``
     - :files: - ``$XDG_CONFIG_HOME/user-dirs.dirs``
               - ``$XDG_CONFIG_HOME/user-dirs.locale``
               - ``$XDG_CONFIG_HOME/mimeapps.list``

   * - ``zathura``
     -

   * - ``zsh``
     - - Per-machine configuration: ``$XDG_DATA_HOME/zsh/*``
       - Run ``export ZDOTDIR="${HOME}"/.config/zsh >> /etc/zshenv``
       - Install https://github.com/agkozak/zsh-z (dir jump)
