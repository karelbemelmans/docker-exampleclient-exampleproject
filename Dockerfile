# Dockerfile for our Drupal project.
# This is a local development image and also a deployable container

# Files get mounted, not copied.
FROM docker.core.aws.unibet.com/drupal-test/base:latest

# We add our extra settings for this project here.
COPY config/extra.settings.php sites/default/extra.settings.php

# Core patches etc will be done in a RUN statement below
# RUN todo-example-patch-statement

# For a development container our Drupal code gets mounted
#ONBUILD COPY drupal/modules/ sites/all/modules/custom/
#ONBUILD COPY drupal/themes/ sites/all/themes/custom/

