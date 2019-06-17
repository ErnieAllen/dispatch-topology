FROM python:2.7

WORKDIR /usr/src/app

RUN pip install pyaml

COPY . .

CMD [ "python", "./config.py", "--verbose" ]