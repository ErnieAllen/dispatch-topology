FROM python:2.7-alpine as base

FROM base as builder

RUN mkdir /install
WORKDIR /install

RUN pip install --install-option="--prefix=/install" pyaml

FROM base

COPY --from=builder /install /usr/local
COPY . /usr/src/app

WORKDIR /usr/src/app

CMD ["python", "./config.py", "--verbose"]