FROM node:14
ADD app.js /app.js
EXPOSE 8080
ENTRYPOINT [ "node", "app.js"]