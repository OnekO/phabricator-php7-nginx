# phabricator-php7-nginx
Custom build of Phabricator using Alpine Linux, php7 and nginx.

__Features__
* Use external database, just add a service in docker-compose.yml if you want to use 
* Pygments (http://pygments.org/) added to highlight source code
* Using local storage by default [TODO: Allow custom configuration]
* Basic options can be configured in Dockerfile/docker-compose.yml
* Remember, WORK IN PROGRESS! I think is ready for production, but be careful.
