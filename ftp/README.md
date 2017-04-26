Create a user account on the server
`sudo useradd Tristan --create-home --shell /usr/sbin/nologin`

`echo /usr/sbin/nologin >> /etc/shells`
`/usr/sbin/nologin`

Create a password :
`sudo passwd Tristan`

Restart the ftp service :
`sudo service vsftpd restart`
