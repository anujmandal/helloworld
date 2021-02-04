FROM python:3.6
WORKDIR /bar_Test_azure
COPY requirements.txt .
RUN apt-get update && apt-get install -y tesseract-ocr
RUN pip install -r requirements.txt

COPY Bar_Test/ .

EXPOSE 80
CMD [ "python", "./app.py" ]
