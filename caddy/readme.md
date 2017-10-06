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

sudo setcap CAP_NET_BIND_SERVICE=+eip /usr/local/bin/caddy

