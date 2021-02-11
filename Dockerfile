FROM jupyter/scipy-notebook:17aba6048f44

RUN conda install --quiet --yes pytorch-cpu torchvision-cpu -c pytorch
RUN mkdir /home/jovyan/whlcache
RUN pip -v --default-timeout=100 download -d /home/jovyan/whlcache torchvision==0.7.0
RUN pip -v --default-timeout=100 download -d /home/jovyan/whlcache torch==1.6.0
RUN pip install tqdm
RUN pip install plotly
RUN pip install /home/jovyan/whlcache/*.whl
RUN rm /home/jovyan/whlcache/*.whl
