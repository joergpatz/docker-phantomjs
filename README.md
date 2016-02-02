# PhantomJS

Docker container running PhantomJS with special setup for creating screenshots from websites.
It can also be used via WebDriver for web system testing.

Start PhantomJS in REPL

* `docker run --rm joergpatz/phantomjs`

Usage as executable

* `docker run --rm joergpatz/phantomjs --help`
* ``docker run --rm -v `pwd`:/tmp joergpatz/phantomjs webshoot.js http://info.cern.ch/hypertext/WWW/TheProject.html webshot.png``

Usage via container bash

* ``docker run --rm -v `pwd`:/tmp -it --entrypoint /bin/bash joergpatz/phantomjs``

Alias docker run command

* ``alias phantomjs='docker run --rm -v `pwd`:/tmp joergpatz/phantomjs'``
* `phantomjs webshoot.js http://info.cern.ch/hypertext/WWW/TheProject.html webshot.png`

Remote WebDriver

* `docker run -d -p 8910:8910 joergpatz/phantomjs --webdriver=8910`


## Infinality for Debian

Better font rendering in Linux with Infinality <https://wiki.debian.org/Fonts#Infinality_for_Debian>