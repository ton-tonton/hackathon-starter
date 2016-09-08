FROM node:6.5-slim

ENV APP_HOME /data/hackathon
RUN mkdir -p /data/hackathon
WORKDIR $APP_HOME

ADD . $APP_HOME/
RUN rm -rf node_modules/
RUN npm install

EXPOSE 3000

CMD npm run start
