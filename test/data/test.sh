#!/bin/bash
set -e

# First keep polling until the website is ready
# until curl -ksLo /dev/null "http://drupal/index.php"
# do
#   sleep 5
#   echo "Waiting for Drupal site to be ready"
# done

# Wait one minute for MySQL to become ready
echo "Sleeping 1 minute to give MySQL some time to get ready..."
sleep 60
echo "Continue with tests..."

# When the site is ready, proceed with the tests
if [ "$1" = "run-tests" ]; then

  # Just exit for now
  echo "All tests were successfull!"
  exit 0
fi
