# Caddy Notes

When I setup Caddy Server on the Intel Stick, I installed the following modules:

* dns
* http.cgi
* http.cors
* http.filemanager
* http.login
* http.nobots
* http.upload
* http.webdav

To allow Caddy Server to operate on 80 and 443, I had to modify the binding
protocol to allow low port usage, which also required I modify the systemd
script.

```
sudo setcap CAP_NET_BIND_SERVICE=+eip /usr/local/bin/caddy
```

## Installation on Ubuntu Server

1. Download and install Caddy Server from website download
2. sudo mkdir /etc/caddy
3. sudo chown -R root:www-data /etc/caddy
4. sudo touch /etc/caddy/Caddyfile
5. sudo mkdir /etc/ssl/caddy
6. sudo chown -R www-data:root /etc/ssl/caddy
7. sudo chmod 0770 /etc/ssl/caddy
8. sudo mkdir /var/www
9. sudo chown www-data:www-data /var/www
10. copy ~/dotfiles/caddy/caddy.service /etc/systemd/system/
11. sudo systemctl daemon-reload
12. sudo systemctl enable caddy.service
13. sudo systemctl status caddy.service
14. Modify ufw firewall, allow http and https
15. Create test page in /var/www
16. Create basic Caddyfile, see example below
17. Run CAP_NET_BIND_SERVICE command from above
18. sudo systemctl start caddy

### Basic Caddyfile

```
http:// {
    root /var/www
    gzip
}
```

### Add PHP Support, as of 2017-10-06

1. sudo apt-get install php7.1-fpm php7.1-cli curl
2. Add fastcgi reference in site block

```
http:// {
    root /var/www
    gzip

    fastcgi / /var/run/php/php7.0-fpm.sock {
        ext     .php
        split   .php
        index   index.php
    }
}

```
