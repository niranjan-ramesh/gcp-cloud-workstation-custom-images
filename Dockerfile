FROM python:3.10-alpine

RUN apk --no-cache add gcc linux-headers build-base libffi-dev
# Install Jupyter and the Python kernel
RUN pip --no-cache-dir install --upgrade pip
RUN pip --no-cache-dir install jupyter ipykernel

# Install additional dependencies for working with Excel files
RUN pip --no-cache-dir install pandas openpyxl


# Cleanup unnecessary files
RUN rm -rf /tmp/* /root/.cache /root/.npm /usr/lib/python*/ensurepip /usr/lib/python*/turtledemo /usr/lib/python*/test /usr/share/man
