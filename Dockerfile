FROM public.ecr.aws/docker/library/node:20-bullseye

RUN mkdir -p /app
COPY * /app/
WORKDIR /app
RUN npm install
RUN ls -la /app/*
EXPOSE 80
CMD [ "node", "/app/helloworld.js"]