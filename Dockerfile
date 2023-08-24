FROM python:3.8
RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask==2.0.1 uWSGI==2.0.19 requests==2.26.0 redis==3.5.3 Werkzeug==2.0.2
WORKDIR /app
COPY app /app
COPY cmd.sh /
EXPOSE 9090 9191
USER uwsgi
CMD ["/cmd.sh"]
