# # Use the Alpine Linux base image
FROM python:3.10-alpine

LABEL description="Docker image for Python jupyter kernel in Vertex AI managed notebook instances."

COPY requirements.txt /user/
WORKDIR /user

# Install build dependencies
RUN apk --no-cache add --virtual build-deps gcc=13.2.1_git20231014-r0 \
    linux-headers=6.5-r0 \
    build-base=0.5-r3 \
    libffi-dev=3.4.4-r3 \
# Install python dependencies
&& pip --no-cache-dir install -r requirements.txt \
# Delete build dependencies
&& apk del build-deps

# Cleanup unnecessary files
RUN rm -rf /tmp/* /root/.cache /root/.npm /usr/lib/python*/ensurepip /usr/lib/python*/turtledemo /usr/lib/python*/test /usr/share/man
