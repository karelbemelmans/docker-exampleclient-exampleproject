# This is the deployable Docker container.
FROM docker.core.aws.unibet.com/drupal-test/base:latest

# We add our extra settings for this project here.
COPY drupal/config/extra.settings.php sites/default/extra.settings.php

# For a development container our Drupal code gets mounted
# but for the deploymable container we need to add the Drupal code.
COPY drupal/modules/ sites/all/modules/custom/
COPY drupal/themes/ sites/all/themes/custom/

