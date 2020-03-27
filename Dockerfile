FROM node

RUN yarn global add sirv-cli
COPY public public

CMD ["sirv", "public"]

