FROM python:alpine

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN pip install --upgrade pip awsebcli

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
