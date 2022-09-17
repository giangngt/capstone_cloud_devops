FROM python:3.8-bullseye

WORKDIR /app/app/templates/

COPY .app.py /app/
COPY .ansible app/templates/ /app/

# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]