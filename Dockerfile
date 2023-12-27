# Use the Alpine Linux base image
FROM python:3.10-alpine

LABEL description="Docker image for Python jupyter kernel in Vertex AI managed notebook instances."

# Install build dependencies
RUN apk --no-cache add --virtual build-deps gcc linux-headers build-base libffi-dev \
# Install python dependencies
&& pip --no-cache-dir install jupyter ipykernel pandas openpyxl \
# Delete build dependencies
&& apk del build-deps

# Cleanup unnecessary files
RUN rm -rf /tmp/* /root/.cache /root/.npm /usr/lib/python*/ensurepip /usr/lib/python*/turtledemo /usr/lib/python*/test /usr/share/man
