FROM python:3.8
WORKDIR /app
COPY . .
USER root
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENV REDIS_HOST=172.17.0.1
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0"]
