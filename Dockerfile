FROM python:3.8
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install -r requirements.txt
EXPOSE 443
CMD python ./app.py
