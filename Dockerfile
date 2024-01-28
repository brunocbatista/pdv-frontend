FROM ubuntu:latest

# Arguments
ARG user=bitzen
ARG uid=1000
ARG NODEJS_VERSION=20

ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update -q

# General packages
RUN apt-get install -qy \
    apt-utils \
    curl \
    git \
    unzip \
    python3

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_${NODEJS_VERSION}.x | bash - \
    && apt-get update -q && apt-get install -qy nodejs
ENV NPM_CONFIG_PREFIX=${HOME}/.npm-global
ENV PATH=$PATH:${HOME}/.npm-global/bin

# Create system user
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/
RUN chown -R $user:$user /home/$user

# Set working directory
WORKDIR /app

USER $user
