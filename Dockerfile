FROM python:3.9-slim
WORKDIR /TestJenkins
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "test.py"]
