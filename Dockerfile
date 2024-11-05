FROM python:3.11-slim
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt
WORKDIR /app
COPY . .
CMD ["python", "-m" , "flask", "run", "--host=0.0.0.0"]
