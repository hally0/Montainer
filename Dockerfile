FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY montainer.py requirements.txt montainer /usr/src/app/

CMD [ "python", "./montainer.py" ]
