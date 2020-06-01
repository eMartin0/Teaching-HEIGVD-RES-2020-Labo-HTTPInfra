# 12.16 pour palier aux problèmes de déclaration de variable dans chance.js
FROM node:12.16

RUN apt-get update && apt-get install -y vim nano

COPY src /opt/app

CMD ["node", "/opt/app/index.js"]
