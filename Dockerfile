FROM python:3.12-rc-slim

USER root
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN python3 -m pip install --upgrade \
    django \
    setuptools \
    wheel

ENTRYPOINT ["/bin/sh", "-c", "bash"]