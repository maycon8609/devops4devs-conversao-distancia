FROM python:3.11-slim
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt
WORKDIR /app
COPY . .
EXPOSE 5000
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
