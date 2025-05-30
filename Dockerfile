FROM php:8.4-apache

RUN apt-get update && apt-get install -y iputils-ping mtr-tiny traceroute host sqlite3 && rm -rf /var/lib/apt/lists/*

RUN sed -ie "s#\->$_GET\['cmd'\]#->{\$_GET\['cmd'\]}#g" ajax.php
RUN sed -ie "s#940px#90vw#g" assets/css/cerulean.min.css
