# pull image python versi 3.6 slim
FROM python:3.6-slim

# copy paste requirements.txt dari local laptop ke container local:container
COPY requirements.txt /requirements.txt
# copy paste directory app di local container /app
COPY ./app /app
# set default working directory ke root directory /
WORKDIR /
# install python libraries
RUN pip install - r requirements.txt
# define entrypoint yang akan digunakan
ENTRYPOINT ["python"]
# define command line apa yang mau kita running ketika run docker
CMD ["app/main.py"]
