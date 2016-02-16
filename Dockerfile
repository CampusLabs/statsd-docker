FROM node:5

WORKDIR /opt

RUN git clone https://github.com/etsy/statsd.git \
    && cd statsd \
    && npm install

COPY config.js /opt/statsd/

STOPSIGNAL SIGKILL
CMD ["node", "/opt/statsd/stats.js", "/opt/statsd/config.js"]
