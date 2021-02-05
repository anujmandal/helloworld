FROM python:3.6
WORKDIR /flaskdroneAnalysis
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5001
CMD ["python","app.py"]
