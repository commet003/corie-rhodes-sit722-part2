# Dockerfile for book_catalog microservice

FROM python:3.11

WORKDIR /app/

COPY book-catalog/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY book-catalog/ .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]