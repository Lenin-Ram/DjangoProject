FROM python:3.10.14-alpine3.19

COPY . /app

WORKDIR /app

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

RUN python manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8000"]


#docker run --name doc2024 -p 8000:8000 -d doc2024