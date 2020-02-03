
# You can copy this Dockerfile.example to Dockerfile to add configuration
# or packages or anything else to your dbimage
ARG BASE_IMAGE=drud/ddev-dbserver-mariadb-10.2:v1.12.0
FROM $BASE_IMAGE
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y php-mongodb
