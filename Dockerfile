FROM django 

RUN mkdir -p /home/app

COPY . /home/app

WORKDIR /home

CMD ["python3", "manage.py", "runserver"]
