FROM jenkins/jenkins:lts

USER root

# Installer Python 3, pip, venv
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3.11-venv

# Installer Docker CLI
RUN apt-get install -y docker.io

# Vérifier les installations
RUN python3 --version && pip3 --version && docker --version

USER jenkins
