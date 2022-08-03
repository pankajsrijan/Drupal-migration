#!/usr/bin/env bash

ARTIFACT_DIR='.'

if [[ $CI == "true" && $PIPELINE_WEBHOOK_EVENT == "PULL_REQUEST" ]]
then
  echo "Running PR Raise"
  ARTIFACT_DIR=${NEW_BUILD_DIR}
elif [[ $CI == "true" ]]
then
  echo "Running PR Merge"
  ARTIFACT_DIR=${NEW_BUILD_DIR}
else
  echo "Running on Local"
fi

if [[ -d ${ARTIFACT_DIR}/docroot/themes/custom/bootstrap ]]; then
  (cd ${ARTIFACT_DIR}/docroot/themes/custom/bootstrap; ./node_modules/.bin/gulp default;)
else
  echo "custom  theme is not available."
fi
