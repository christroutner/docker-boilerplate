#!/bin/bash

# This bash script removes orphaned Docker images from the host system.

# Remove all untagged docker images.
docker rmi $(docker images | grep "^<none>" | awk '{print $3}')
