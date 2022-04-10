# https://docs.docker.com/buildx/working-with-buildx/#dockerfile
FROM docker

COPY --from=docker/buildx-bin:latest /buildx /usr/libexec/docker/cli-plugins/docker-buildx
RUN docker buildx version
