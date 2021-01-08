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
     - The configuration is in ``$XDG_CONFIG_HOME/davmail/config``. Run
       ``systemctl --user enable --now davmail``. (Edit ``davmail.url``).

   * - ``foot``
     -

   * - ``git``
     -

   * - ``i3status``
     - Wrapped by ``swaystatus``

   * - ``kanshi``
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

   * - ``sway``
     - :files: - ``$XDG_CONFIG_HOME/sway/config``
               - ``$XDG_CONFIG_HOME/sway/config.d/*``
               - ``$XDG_CONFIG_HOME/sway/bin/*``

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
     -

   * - ``zathura``
     -

   * - ``zsh``
     - - Per-machine configuration: ``$XDG_DATA_HOME/zsh/*``
       - Run ``export ZDOTDIR="${HOME}"/.config/zsh >> /etc/zshenv``
       - Install https://github.com/agkozak/zsh-z (dir jump)
