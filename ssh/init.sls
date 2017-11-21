ssh_pkgs:
  pkg.installed:
    - pkgs:
        - openssh-server

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://ssh/sshd_config
    - mode: 644
