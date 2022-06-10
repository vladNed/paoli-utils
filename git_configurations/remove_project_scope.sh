#!/bin/bash

echo "> Start removing project scope."

# Define project directories
PROJECTS_ROOT="${HOME}/projects"
if [ ! -d "${PROJECTS_ROOT}" ]; then
    echo "> ERR: Could not remove project. Projects dir does not exist."
    exit 1
fi

# Get user input
read -p " + Project scope: " PROJECT_SCOPE

# Define the project scope path and check if the folder already exists
PROJECT_SCOPE_PATH="${PROJECTS_ROOT}/${PROJECT_SCOPE}"
if [ ! -d "${PROJECT_SCOPE_PATH}" ]; then
    echo "> ERR: Project scope does not exists."
    exit 1
fi

read -p " + Are you sure ? This will remove everything [y/n]" DECISION

if [ "${DECISION}" == "n" ] || [ "${DECISION}" == "no" ]; then
    echo "> Will not delete @${PROJECT_SCOPE}"
    exit 1
fi

git config --global --unset includeIf.gitdir:"${PROJECT_SCOPE_PATH}/".path
rm -rf "${PROJECT_SCOPE_PATH}"

echo "> Project scope @${PROJECT_SCOPE} was removed from projects"