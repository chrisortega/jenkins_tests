FROM jenkins/jenkins:lts
USER root

# Cleanly extract the official, pre-compiled Docker CLI directly from the Docker image
COPY --from=docker:27.3.1-cli /usr/local/bin/docker /usr/local/bin/docker

# Keep running as root so Jenkins can read your mounted host socket file
USER root
