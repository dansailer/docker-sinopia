FROM node:alpine
RUN  set -x \
  && adduser -D -g "" sinopia \
  && mkdir -p /opt/sinopia/storage \
  && npm install -g js-yaml sinopia

ADD /config.yaml /opt/sinopia/config.yaml
ADD /start.sh /opt/sinopia/start.sh

RUN chown -R sinopia:sinopia /opt/sinopia

WORKDIR /opt/sinopia
USER sinopia
VOLUME /opt/sinopia
EXPOSE 4873

CMD ["/opt/sinopia/start.sh"]

