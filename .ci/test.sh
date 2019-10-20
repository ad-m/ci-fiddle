#!/bin/bash
#
# Tag a Docker image and push the Docker image to Docker Hub.

################################################################################
# Configuration
################################################################################
# Fail on first error


# b63543e

################################################################################
# Constants
################################################################################


################################################################################
# Global variables
################################################################################


################################################################################
# Functions
################################################################################
########################################
# Tag a Docker image and push the Docker image to Docker Hub.
#
# Globals:
#   None
# Arguments:
#   image_name_and_tag Name and tag of the image.
#   git_branch_name Git branch name.
#   git_tag_name Git tag name.
#   git_pull_request_name Git PR name.
# Returns:
#   None
########################################
sha() {
  local commit_sha_or_range="${1}"
  local sha
  sha=$(echo "${commit_sha_or_range}" | cut -c 1-7)

  npm run --silent ci:files-changed -- "${sha}"
  local exit_code="$?"

  if [[ $exit_code -eq 128 ]]; then
    echo 'true'
  else
    echo 'false'
  fi
}

main() {
  sha "${@}"
}

main "${@}"
