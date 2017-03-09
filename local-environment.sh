#!/bin/bash
#
# This script fires up the development environment with the mounted Drupal
# directory.

COMPOSE_FILE=./dev/docker-compose.yml

case "$1" in

  up)
    echo "Building Docker environment..."
    docker-compose -f $COMPOSE_FILE build --pull

    echo "Starting Docker environment..."
    docker-compose -f $COMPOSE_FILE up -d
    ;;

  start)
    echo "Building Docker environment..."
    docker-compose -f $COMPOSE_FILE build --pull

    echo "Starting Docker environment..."
    docker-compose -f $COMPOSE_FILE start
    ;;

  stop)
    echo "Stopping Docker environment..."
    docker-compose -f $COMPOSE_FILE stop
    ;;

  destroy)
    if [ "$2" = "--really" ]; then
      echo "Destroying Docker environment..."
      docker-compose -f $COMPOSE_FILE down
      exit 0
    fi

    echo "###################################################################"
    echo "#                     !!!DANGER ALERT !!!                         #"
    echo "###################################################################"
    echo "You need to run this command with the '--really' option to proceed."
    ;;

  *)
    echo "Usage: $0 up|start|stop|destroy"
    ;;
esac



