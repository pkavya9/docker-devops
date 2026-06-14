FROM gcc:latest
WORKDIR /app
COPY Hello.c .
RUN gcc Hello.c -o hello
CMD ["./hello"]
python:
FROM python:latest
WORKDIR /pythonapp
COPY Hello.py /pythonapp/
CMD ["python", "Hello.py"]
flask:
FROM python:latest
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
EXPOSE 8000
CMD ["python", "app.py"]
HTML:
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
java:
FROM eclipse-temurin:17
WORKDIR /app
COPY Hello.java .
RUN javac Hello.java
CMD ["java", "Hello"]
node:
FROM node:alpine
WORKDIR /app
COPY Hello.js .
CMD ["node", "Hello.js"]
