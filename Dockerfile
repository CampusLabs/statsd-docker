FROM node:5

WORKDIR /opt

RUN git clone https://github.com/etsy/statsd.git \
    && cd statsd \
    && npm install

COPY config.js /opt/statsd/

CMD ["node", "/opt/statsd/stats.js", "/opt/statsd/config.js"]
