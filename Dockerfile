FROM node:10

# zip needed for some circle builds (releasing to Doris)
RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        zip \
	awscli \
    && rm -rf /var/lib/apt/lists/*
        
# Get docker.
RUN curl -s https://get.docker.com | bash -s

# Install docker-compose.
RUN curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose
