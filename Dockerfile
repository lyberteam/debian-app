################################
#                              #
#    Debian - App container    #
#                              #
################################

FROM debian:jessie

ADD lyberteam-message.sh /var/www/lyberteam/lyberteam-message.sh
RUN chmod +x /var/www/lyberteam/lyberteam-message.sh
RUN /var/www/lyberteam/lyberteam-message.sh

MAINTAINER Lyberteam <lyberteamltd@gmail.com>
LABEL Vendor="Lyberteam"
LABEL Description="Debian like application container"
LABEL Version="1.0.1"

VOLUME /var/www/lyberteam

WORKDIR /var/www/lyberteam

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*