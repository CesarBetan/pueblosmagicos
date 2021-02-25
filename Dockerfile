FROM tiangolo/uwsgi-nginx-flask:python3.6

# copy requirements to download dependencies
COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

# copy app
COPY . /app

# create working directory on entry
WORKDIR /app