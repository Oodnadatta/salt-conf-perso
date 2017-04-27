If not in the init.sls,
* create a user account on the server:
`sudo useradd Tristan --create-home --shell /usr/sbin/nologin`
* add nologin to the authorized shells avoiding a user to log in (if somebody try to log in, it will return "This account is currently not available"):
`echo /usr/sbin/nologin >> /etc/shells`

Create a password:
`sudo passwd Tristan`

Restart the ftp service:
`sudo service vsftpd restart`
