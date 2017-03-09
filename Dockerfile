# Dockerfile for local development
# Files get mounted, not copied.
FROM docker.core.aws.unibet.com/drupal-test/base
COPY config/extra.settings.php sites/default/extra.settings.php
