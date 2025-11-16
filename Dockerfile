# Don't Remove Credit @ph0enix_web
# Subscribe YouTube Channel For Amazing Bot @iyanuanjorindamilola
# Ask Doubt on telegram @ph0enix_web

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /PHOENIX-FILTER-BOT
WORKDIR /PHOENIX-FILTER-BOT
COPY . /PHOENIX-FILTER-BOT
CMD ["python", "bot.py"]
