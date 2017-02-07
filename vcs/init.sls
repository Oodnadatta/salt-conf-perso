vcs.pkgs:
  pkg.installed:
    - pkgs:
      - git
      - tig

/home/asdp/.gitconfig:
  file.symlink:
    - target: /srv/salt/vcs/.gitconfig
    - user: asdp