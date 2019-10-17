FROM python:3.6

COPY mysite/ /mysite/
COPY requirements.txt /
COPY start.sh /
WORKDIR /mysite
RUN pip install -r /requirements.txt
EXPOSE 8000

WORKDIR /
CMD [ "bash", "start.sh" ]
