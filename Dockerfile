FROM python:3

LABEL Maintainer = Chris W Mann

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install vim sudo emacs

# Make sure we're running bash, create a folder for the persistent volume and install the requirements
RUN ln -sf /bin/bash /bin/sh && mkdir -vp /usr/src/model && mkdir -vp /usr/src/data

ENV PYTHONUNBUFFERED 1

COPY src /usr/src
WORKDIR /usr/src/
RUN pip install -r requirements.txt

RUN adduser --disabled-password --gecos '' analyst
RUN adduser analyst sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

COPY /dotfiles/ /home/analyst/
USER analyst
RUN source /home/analyst/.bashrc
RUN sudo chown -R analyst /usr/src
CMD /bin/bash