# This is the deployable Docker container.
FROM docker.core.aws.unibet.com/drupal-test/base:latest

# couchbase
RUN set -x && apt-get update && apt-get install -y \
    lsb-release \
    wget \
  && wget http://packages.couchbase.com/releases/couchbase-release/couchbase-release-1.0-2-amd64.deb \
  && dpkg -i couchbase-release-1.0-2-amd64.deb \
  && apt-get update && apt-get install -y \
    libcouchbase-dev \
    libcouchbase2-bin \
    build-essential \
  && pecl install couchbase \
  && docker-php-ext-enable couchbase

# We add our extra settings for this project here.
COPY drupal/config/extra.settings.php sites/default/extra.settings.php

# Install couchbase Drupal extension
RUN drush dl couchbasedrupal

# For a development container our Drupal code gets mounted
# but for the deploymable container we need to add the Drupal code.
COPY drupal/modules/ sites/all/modules/custom/
COPY drupal/themes/ sites/all/themes/custom/

