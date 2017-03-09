# Dockerfile for local development
# Files get mounted, not copied.
FROM docker.core.aws.unibet.com/drupal-test/base

# We add our extra settings for this project here.
COPY config/extra.settings.php sites/default/extra.settings.php

# Core patches etc will be done in a RUN statement below
# RUN todo-example-patch-statement
