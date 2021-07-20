FROM django

RUN mkdir -p /home/app

COPY . /home/app

WORKDIR /home/app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python3", "manage.py", "runserver", "--host=0.0.0.0:8080"]
