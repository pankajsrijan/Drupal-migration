# drupal-starterkit

This is simple drupal starterkit for any drupal project. This repository contains the docksal setup for the any drupal project, gitlab-ci.yml to setup
gitlab pipeline and .github folder for github actions.

BLTed powered by Docksal
A base or sample Drupal 9 project defined by Acquia BLT and powered by Docksal.

BLT is an open-source project template and tool that enables building, testing, and deploying Drupal installations following Acquia Professional Services' best practices.

Docksal is a Docker tool for building containerized development environments. From a zero-config setup to a fully customized build, along with the command-line tool fin, Docksal provides a powerful and flexible development platform.

Getting Started
You must first have Docksal installed and setup on your computer.

If you are using an Acquia Cloud production environment, follow instructions for adding your Acquia Cloud API key to the Docksal environment.

To use this project as a starter, clone this repo to your local machine.

From your terminal, go to the directory where you have cloned the repo and enter the following command:

fin init
A composer.lock file and a salt.txt file will be generated. These files, along with the docroot directory should be committed to your repository. When complete, you can access the site by running:

fin drush uli
