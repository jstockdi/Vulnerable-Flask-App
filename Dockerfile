FROM ubuntu:latest


# Setup env
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONFAULTHANDLER 1

# Install pipenv and compilation dependencies
RUN apt-get update && apt-get install -y --no-install-recommends make jq gnupg curl unzip less netcat openssh-client git gcc python3 python3-pip python3-dev python3.10-venv vim
RUN pip install -U pipenv


# Create and switch to a new user
RUN useradd --create-home devuser
WORKDIR /home/devuser
USER devuser

ENTRYPOINT ["/bin/bash"]
