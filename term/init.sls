term.pkgs:
  pkg.installed:
    - pkgs:
      - rxvt-unicode-256color
      - tmux
      - zsh
      - yakuake

/home/asdp/.tmux.conf:
  file.symlink:
    - target: /srv/salt/term/.tmux.conf
    - user: asdp