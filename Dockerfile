FROM mesosphere/zeppelin:0.6.0

MAINTAINER jeffecu88@gmail.com

RUN curl -LO http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
RUN bash Miniconda-latest-Linux-x86_64.sh -p /miniconda -b
RUN rm Miniconda-latest-Linux-x86_64.sh

ENV PATH=/miniconda/bin:${PATH}
RUN conda update -y conda
RUN conda install -y \
    matplotlib \
    seaborn \
    numpy \
    scikit-learn \
    bokeh \
    pandas
