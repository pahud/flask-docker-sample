FROM public.ecr.aws/d7p2r8s3/python:3-alpine

RUN pip install flask

ENV FLASK_APP app.py

WORKDIR /app

COPY . /app/

CMD ["python", "app.py"]
