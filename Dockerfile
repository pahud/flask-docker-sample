FROM python:3-alpine

RUN pip install flask

ENV FLASK_APP app.py

WORKDIR /app
doc
COPY . /app/

CMD ["python", "app.py"]
