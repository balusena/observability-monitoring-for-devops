FROM          node:18
RUN           mkdir /app
WORKDIR       /app
COPY          ./ /app/
RUN           npm install
RUN           curl -s -L https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem -o /app/rds-combined-ca-bundle.pem
COPY          run.sh .
ENTRYPOINT    ["bash", "run.sh"]

