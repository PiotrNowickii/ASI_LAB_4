FROM python:3.9.7-slim

WORKDIR /app

COPY app.py /app
COPY model.pkl /app
COPY requirements.txt /app

RUN pip install -r requirements.txt

CMD ["python", "app.py"]