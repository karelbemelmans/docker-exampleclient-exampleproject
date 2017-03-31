# This is the deployable Docker container.
FROM karelbemelmans/drupal-base:latest

# We enable opcache for our deployment container
RUN docker-php-ext-install opcache

# set recommended PHP.ini settings
# see https://secure.php.net/manual/en/opcache.installation.php
RUN { \
        echo 'opcache.memory_consumption=128'; \
        echo 'opcache.interned_strings_buffer=8'; \
        echo 'opcache.max_accelerated_files=4000'; \
        echo 'opcache.revalidate_freq=60'; \
        echo 'opcache.fast_shutdown=1'; \
        echo 'opcache.enable_cli=1'; \
    } > /usr/local/etc/php/conf.d/opcache-recommended.ini

# We add our extra settings for this project here.
COPY drupal/config/extra.settings.php sites/default/extra.settings.php

# For a development container our Drupal code gets mounted
# but for the deploymable container we need to add the Drupal code.
COPY drupal/modules/ sites/all/modules/custom/
COPY drupal/themes/ sites/all/themes/custom/

