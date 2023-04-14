FROM ghcr.io/umami-software/umami:mysql-latest
LABEL authors="warden"
ARG MYSQL_USERNAME
ARG MYSQL_PASSWORD
ARG MYSQL_HOST
ARG MYSQL_PORT

ENV PORT 8080
ENV HASH_SALT="replace-me-with-a-random-string"
ENV DATABASE_URL="mysql://${MYSQL_USERNAME}:${MYSQL_PASSWORD}@${MYSQL_HOST}:${MYSQL_PORT}/umami"

EXPOSE 8080

#ENTRYPOINT ["top", "-b"]