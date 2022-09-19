FROM jorge07/alpine-php:8.1-dev

ENV   CRON_PATH /etc/crontabs
LABEL maintainer "@alseambusher"
LABEL description "Crontab-UI docker"

RUN git clone https://github.com/alseambusher/crontab-ui.git; touch $CRON_PATH/root; chmod +x $CRON_PATH/root \
    && apk --no-cache add \
      wget \
      curl \
      nodejs \
      npm \
      supervisor \
      tzdata


WORKDIR /crontab-ui

COPY supervisord.conf /etc/supervisord.conf

RUN   npm install

ENV   HOST 0.0.0.0

ENV   PORT 8000

ENV   CRON_IN_DOCKER true

EXPOSE $PORT

CMD ["supervisord", "-c", "/etc/supervisord.conf"]