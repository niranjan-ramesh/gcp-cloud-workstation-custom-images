FROM us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest

RUN mkdir -p /miniconda3
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /miniconda3/miniconda.sh
RUN chmod +x /miniconda3/miniconda.sh
RUN /miniconda3/miniconda.sh -b -u -p /miniconda3
RUN rm -rf /miniconda3/miniconda.sh

RUN /miniconda3/bin/conda init bash --system

RUN wget https://open-vsx.org/api/ms-python/python/2023.16.0/file/ms-python.python-2023.16.0.vsix && \
unzip ms-python.python-2023.16.0.vsix "extension/*" && \
mv extension /opt/code-oss/extensions/ms-python.python-2023.16.0-universal

RUN wget https://open-vsx.org/api/ms-toolsai/jupyter/2023.9.100/file/ms-toolsai.jupyter-2023.9.100.vsix && \
unzip ms-toolsai.jupyter-2023.9.100.vsix "extension/*" && \
mv extension /opt/code-oss/extensions/ms-toolsai.jupyter-2023.9.100-universal

RUN wget https://open-vsx.org/api/ms-toolsai/jupyter-keymap/1.1.2/file/ms-toolsai.jupyter-keymap-1.1.2.vsix && \
unzip ms-toolsai.jupyter-keymap-1.1.2.vsix "extension/*" && \
mv extension /opt/code-oss/extensions/ms-toolsai.jupyter-keymap-1.1.2-universal

RUN wget https://open-vsx.org/api/ms-toolsai/vscode-jupyter-slideshow/0.1.5/file/ms-toolsai.vscode-jupyter-slideshow-0.1.5.vsix && \
unzip ms-toolsai.vscode-jupyter-slideshow-0.1.5.vsix "extension/*" && \
mv extension /opt/code-oss/extensions/ms-toolsai.vscode-jupyter-slideshow-0.1.5-universal

RUN wget https://open-vsx.org/api/ms-toolsai/jupyter-renderers/1.0.17/file/ms-toolsai.jupyter-renderers-1.0.17.vsix && \
unzip ms-toolsai.jupyter-renderers-1.0.17.vsix "extension/*" && \
mv extension /opt/code-oss/extensions/ms-toolsai.jupyter-renderers-1.0.17-universal

RUN wget https://open-vsx.org/api/ms-toolsai/vscode-jupyter-cell-tags/0.1.8/file/ms-toolsai.vscode-jupyter-cell-tags-0.1.8.vsix && \
unzip ms-toolsai.vscode-jupyter-cell-tags-0.1.8.vsix "extension/*" && \
mv extension /opt/code-oss/extensions/ms-toolsai.vscode-jupyter-cell-tags-0.1.8-universal

