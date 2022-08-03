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

echo "Node Version: ";
node -v
echo "NPM Version: ";
npm -v

if [[ -d ${ARTIFACT_DIR}/docroot/themes/custom/jfm ]]; then
  echo "--- Running Frontend setup for JFM theme ---"
  (cd ${ARTIFACT_DIR}/docroot/themes/custom/jfm; npm install)
else
  echo "JFM theme is not available."
fi
