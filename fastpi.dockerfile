FROM python:3.9
COPY . app
WORKDIR app
RUN ls
RUN pip install uvicorn
RUN pip install boto3
RUN pip install fastapi
RUN pip install asyncio
ENV AWS_DEFAULT_REGION=eu-central-1
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
