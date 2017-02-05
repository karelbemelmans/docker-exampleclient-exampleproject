# Docker file for packaging as a production container
# Files get copied into this container.

FROM 970605007005.dkr.ecr.eu-west-1.amazonaws.com/drupal/base
COPY config/extra.settings.php sites/default/extra.settings.php

# Copy actual Drupal files into the container
COPY drupal/modules/ sites/all/modules/custom/
COPY drupal/themes/ sites/all/themes/custom/
