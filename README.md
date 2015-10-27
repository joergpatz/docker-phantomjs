# PhantomJS

Docker container running phantomJS with special setup for creating webshots.
It can also be used via WebDriver for web system testing.

Start PhantomJS in REPL

* `docker run --rm joergpatz/phantomjs`

Usage as executable

* `docker run --rm joergpatz/phantomjs --help`

Usage inside the container

* ``docker run --rm -v `pwd`/src:/tmp -it --entrypoint /bin/bash joergpatz/phantomjs``
* ``docker run --rm -v `pwd`/src:/tmp joergpatz/phantomjs webshoot.js``

Remote WebDriver

* `docker run -d -p 8910:8910 joergpatz/phantomjs --webdriver=8910`


## Infinality for Debian

Better font rendering in Linux with Infinality <https://wiki.debian.org/Fonts#Infinality_for_Debian>
