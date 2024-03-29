FROM node:14-alpine

WORKDIR /app

COPY . .

RUN npm install

EXPOSE  3000

ENTRYPOINT ["node", "index.js"]

# Development
#CMD ["npm", "run", "dev"]

# Production
# RUN npm install -g pm2
# CMD ["pm2-runtime", "ecosystem.config.js", "--env", "production"]
