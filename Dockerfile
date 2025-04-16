ARG BASE_IMAGE_PATH="quay.io/jupyter/base-notebook:latest"

FROM $BASE_IMAGE_PATH

ARG BUILD="20250415"
ARG MAINTAINER="Alex Iankoulski <alex_iankoulski@yahoo.com>"
ARG DESCRIPTION="JupyterLab Depend on Docker Image"
ARG http_proxy
ARG https_proxy
ARG no_proxy

LABEL MAINTAINER="$MAINTAINER"

LABEL DESCRIPTION="$DESCRIPTION"

LABEL BUILD="$BUILD"

USER root

ADD Container-Root /
RUN chmod +x /*.sh

RUN export http_proxy=$http_proxy; export https_proxy=$https_proxy; export no_proxy=$no_proxy; /setup.sh

# Uncomment if you wish to disable root access to container
#USER jovyan

CMD /startup.sh

