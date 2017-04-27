ftp.pkgs:
  pkg.installed:
    - pkgs:
      - vsftpd
      
/etc/vsftpd.conf:
  file.managed:
    - source: salt://ftp/vsftpd.conf
    - mode: 644
    
/etc/vsftpd.allowed_users:
  file.managed:
    - source: salt://ftp/vsftpd.allowed_users
    - mode: 644

Tristan: # user name
  user.present: # user should be present
    - shell: /usr/sbin/nologin # his login shell
    - home: /home/Tristan # $HOME location
