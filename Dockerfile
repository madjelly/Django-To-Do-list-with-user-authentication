FROM django 

RUN mkdir -p /home/app

COPY . /home/app

WORKDIR /home/app

EXPOSE 8080
EXPOSE 8000

CMD ["python3", "manage.py", "runserver"]
