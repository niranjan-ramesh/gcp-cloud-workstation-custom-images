FROM us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest

RUN mkdir -p /miniconda3
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /miniconda3/miniconda.sh
RUN chmod +x /miniconda3/miniconda.sh
RUN /miniconda3/miniconda.sh -b -u -p /miniconda3
RUN rm -rf /miniconda3/miniconda.sh

RUN /miniconda3/bin/conda init bash --system

RUN wget https://open-vsx.org/api/ms-python/python/2023.16.0/file/ms-python.python-2023.16.0.vsix && \
unzip ms-python.python-2023.16.0.vsix "extension/*" && \
mv extension /opt/code-oss/extensions/ms-python

RUN wget https://open-vsx.org/api/ms-toolsai/jupyter/2023.9.100/file/ms-toolsai.jupyter-2023.9.100.vsix && \
unzip ms-toolsai.jupyter-2023.9.100.vsix "extension/*" && \
mv extension /opt/code-oss/extensions/jupyter