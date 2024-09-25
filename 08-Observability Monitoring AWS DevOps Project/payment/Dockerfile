FROM          python:3.6
RUN           mkdir /app
WORKDIR       /app
COPY          payment.ini payment.py rabbitmq.py requirements.txt /app/
RUN           pip3.6 install -r requirements.txt
COPY          run.sh .
ENTRYPOINT    ["bash", "run.sh"]


