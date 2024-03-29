#!/bin/bash

# Scrip to add a new project scope to projects folder
#
# Author: Vlad Nedelcu, Teodor Dumitrescu
# Created: 10 Jun 2022
# Email: nedelcuvd@gmail.com

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo ">${green} Start adding new project scope.${reset}"

function setupProjectGitConfig() {
  project_path="$1"
  user_name="$2"
  user_email="$3"

  git config --global includeIf.gitdir:"${project_path}/".path "${project_path}/.gitconfig"
  git config --file "${project_path}/.gitconfig" user.name "${USER_NAME}"
  git config --file "${project_path}/.gitconfig" user.email "${USER_EMAIL}"
}


# Define project directories
PROJECTS_ROOT="${HOME}/projects"
if [ ! -d "${PROJECTS_ROOT}" ]; then
    echo "> ${red}ERR:${reset} Could not add new project. Projects dir does not exist."
    exit 1
fi

# Get user input
read -p " + Project scope: " PROJECT_SCOPE
read -p " + Username: " USER_NAME
read -p " + User email: " USER_EMAIL

# Define the project scope path and check if the folder already exists
PROJECT_SCOPE_PATH="${PROJECTS_ROOT}/${PROJECT_SCOPE}"
if [ -d "${PROJECT_SCOPE_PATH}" ]; then
    echo "> ${red}ERR:${reset} Project scope already exists. Choose another name."
    exit 1
fi

mkdir -p "${PROJECT_SCOPE_PATH}"

setupProjectGitConfig "${PROJECT_SCOPE_PATH}" "${USER_NAME}" "${USER_EMAIL}"

echo "> Added ${green}@${PROJECT_SCOPE}${reset} to projects"
