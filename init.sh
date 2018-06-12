#!/bin/sh
STARTED=".STARTED"
if [ ! -e $STARTED ]; then
    touch $STARTED
    /var/www/phabricator/phabricator/bin/config set mysql.host ${MYSQL_HOST}
    /var/www/phabricator/phabricator/bin/config set mysql.user ${MYSQL_USER}
    /var/www/phabricator/phabricator/bin/config set mysql.pass ${MYSQL_PASSWORD}
    /var/www/phabricator/phabricator/bin/config set mysql.port ${MYSQL_PORT}
    /var/www/phabricator/phabricator/bin/storage upgrade --force
    /var/www/phabricator/phabricator/bin/config set phabricator.base-uri ${BASE_URI}
    /var/www/phabricator/phabricator/bin/config set security.alternate-file-domain ${CDN_URI}
    /var/www/phabricator/phabricator/bin/config set storage.local-disk.path ${LOCAL_PATH}
    /var/www/phabricator/phabricator/bin/config set pygments.enabled true
    /var/www/phabricator/phabricator/bin/phd start
fi

/usr/bin/supervisord -c /etc/supervisord.conf && /bin/sh
