FROM python:3.11.4
ENV PYTHONUNBUFFERED 1

COPY /requirements.txt /tmp/requirements.txt
COPY /autoDE /autoDE
WORKDIR /autoDE
EXPOSE 8000

ARG DEV=false

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    if [ $DEV = "true" ]; \
        # then /py/bin/pip install -r /tmp/req_dev.txt ; \
    fi && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user && \
    chown -R django-user:django-user -R /autoDE/ 
    

ENV PATH="/scripts:/py/bin:$PATH"

USER django-user
