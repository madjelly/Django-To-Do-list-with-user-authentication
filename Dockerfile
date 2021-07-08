FROM django 

RUN mkdir -p /home/app

COPY . /home/app

WORKDIR /home/app

COPY requirements.txt ./

RUN sudo apt-get update

RUN sudo apt-get install python3-pip

RUN pip install -r requirements.txt

EXPOSE 8080
EXPOSE 8000

CMD ["python", "manage.py", "runserver"]
