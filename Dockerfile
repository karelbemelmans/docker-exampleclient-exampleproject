# Dockerfile for local development
# Files get mounted, not copied.
FROM 970605007005.dkr.ecr.eu-west-1.amazonaws.com/drupal/base
COPY config/extra.settings.php sites/default/extra.settings.php
