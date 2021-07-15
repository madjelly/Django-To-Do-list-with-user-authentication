FROM django 

RUN mkdir -p /home/app

COPY . /home/app

WORKDIR /home

RUN curl https://pkgconfig.freedesktop.org/releases/pkg-config-0.29.tar.gz -o pkgconfig.tgz
RUN tar -zxf pkgconfig.tgz && cd pkg-config-0.29
RUN ./configure && make install

WORKDIR /home/app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

CMD ["python3", "manage.py", "runserver"]
