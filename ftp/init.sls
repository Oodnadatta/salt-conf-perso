ftp.pkgs:
  pkg.installed:
    - pkgs:
      - vsftpd
      
/etc/vsftpd.conf:
  file.managed:
    - source: salt://ftp/vsftpd.conf
    - mode: 644
