FROM node:lts

WORKDIR /app/my-website

EXPOSE 3000
COPY ./my-website/docs /app/website/docs
COPY ./my-website /app/my-website
RUN yarn install

CMD ["yarn", "run", "start"]
