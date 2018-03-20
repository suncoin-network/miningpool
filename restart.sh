#!/bin/bash
################################################################################
# restart services

/etc/init.d/memcached restart
/etc/init.d/mysql restart
/etc/init.d/nginx restart
/etc/init.d/php7.0-fpm restart
