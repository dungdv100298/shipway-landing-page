FROM node:16-alpine
WORKDIR /app
COPY . .
RUN yarn
RUN yarn build
EXPOSE 3000
CMD ["node", ".output/server/index.mjs"]
