FROM python:3
RUN pip install flask
ADD server.py server.py
EXPOSE 5000
ENTRYPOINT ['python3', 'server.py']