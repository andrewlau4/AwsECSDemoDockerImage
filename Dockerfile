FROM public.ecr.aws/docker/library/node:20-bullseye

COPY * ./
RUN npm install
EXPOSE 80
CMD [ "node", "helloworld.js"]