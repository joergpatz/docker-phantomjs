FROM buildpack-deps:jessie
MAINTAINER Joerg Patzer <joerg.patzer@me.com>

ENV PHANTOM_VERSION 2.1.1

COPY ./infinality /tmp

RUN sed -i "s/jessie main/jessie main contrib/" /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y \
        ttf-mscorefonts-installer \
    && curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOM_VERSION}-linux-x86_64.tar.bz2 | tar -xjC /tmp \
    && cd /tmp/phantomjs-${PHANTOM_VERSION}* \
    && mv bin/phantomjs /usr/local/bin \
    && cd /tmp \
    && dpkg -i *-infinality*.deb \
    && printf "4\n" | /etc/fonts/infinality/infctl.sh setstyle \
    && apt-get autoremove \
    && apt-get clean \
    && rm -rf /tmp/* /var/lib/apt/lists/*

WORKDIR /tmp

# expose port for webdriver option
EXPOSE 8910

# make container as a executable, e.g. docker run --rm <image> 'phantomjs argument'
ENTRYPOINT ["/usr/local/bin/phantomjs"]
