FROM python:3.8-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --trusted-host pypi.python.org -r requirements.txt
COPY . .
EXPOSE 5000
ENV FLASK_ENV=production
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
