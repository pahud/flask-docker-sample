FROM alpine:latest

RUN apk add python3 python3-dev && \
  pip3 install --no-cache-dir --upgrade pip && \
  pip3 install flask

RUN cd /usr/bin \
  && ln -sf python3 python \
  && ln -sf pip3 pip

ENV FLASK_APP app.py

WORKDIR /app
COPY . /app/
CMD ["python", "app.py"]
