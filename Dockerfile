FROM python:bullseye
COPY ../ .
RUN pip install dash
RUN pip install pandas
RUN pip install plotly
RUN pip install gunicorn
RUN ["chmod", "+x", "app.py"]
EXPOSE 8050
ENTRYPOINT gunicorn --bind 0.0.0.0:8050 wsgi