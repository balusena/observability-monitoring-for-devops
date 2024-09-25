FROM          node:18
RUN           mkdir /app
WORKDIR       /app
COPY          ./ /app/
RUN           npm install
COPY          run.sh .
ENTRYPOINT    ["bash", "run.sh"]