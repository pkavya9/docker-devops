FROM python:latest

WORKDIR /pythonapp

COPY Hello.py /pythonapp/

CMD ["python", "Hello.py"]