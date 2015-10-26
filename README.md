# PhantomJS

Docker container running phantomJS with special setup for creating webshots.
It can also be used via WebDriver for web system testing.

Start PhantomJS in REPL

* `docker run --rm phantom`

Usage as executable

* `docker run --rm phantom --help`

Usage inside the container

* `docker run --rm -v "<absolute path>/src:/src" -it --entrypoint /bin/bash phantom`

Remote WebDriver

* `docker run -d -p 8910:8910 phantom phantomjs --webdriver=8910`


## Infinality for Debian

Better font rendering in Linux with Infinality <https://wiki.debian.org/Fonts#Infinality_for_Debian>