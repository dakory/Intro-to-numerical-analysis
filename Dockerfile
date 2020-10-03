FROM python:3.8.2

# Dependencies
COPY requirements.txt ./
RUN pip install -r requirements.txt
RUN rm requirements.txt