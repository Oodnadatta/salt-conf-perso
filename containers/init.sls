containers.pkgs:
  pkg.installed:
    - pkgs:
      - lxc

/home/asdp/.config/lxc/default.conf:
  file.symlink:
    - target: /srv/salt/containers/default.conf
    - user: asdp
    - makedirs: true