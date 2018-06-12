# phabricator-php7-nginx
Custom build of Phabricator using Alpine Linux, php7 and nginx.

__Features__
* Using PHP7.2 with OPCACHE enabled
* NGINX as webserver,you can modify used configuration in nginx folder
* Use external database, just add a service in docker-compose.yml if you want to use a linked container
* Pygments (http://pygments.org/) added to highlight source code
* Using local storage by default [TODO: Allow custom configuration]
* Basic options can be configured in Dockerfile/docker-compose.yml [TODO: ALlow to configure everything]
* Remember, WORK IN PROGRESS! I think is ready for production, but be careful.
