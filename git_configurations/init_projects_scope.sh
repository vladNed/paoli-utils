#!/bin/bash
# Initialize the projects folder
#
# Has options to choose if you only want the root folder or have sub direcctories
# for multiple github scopes
#
# Author: Vlad Nedelcu, Teodor Dumistrescu
# Creation data: 10 Jun 2022
# email: nedelcuvd@gmail.com

echo "> Starting configuration of projects folders."

# Disable global user name and email in favor of project-specific ones
git config --global --unset user.name
git config --global --unset user.email

# Define project directories
PROJECTS_ROOT="${HOME}/projects"

# Function to set .gitconfig in desired folder path
function setupProjectGitConfig() {
  project_path="$1"
  user_name="$2"
  user_email="$3"

  git config --global includeIf.gitdir:"${project_path}/".path \""${project_path}/.gitconfig"\"
  git config --file "${project_path}/.gitconfig" user.name \""${USER_NAME}"\"
  git config --file "${project_path}/.gitconfig" user.email \""${USER_EMAIL}"\"
}

# Check if user wants per-github directory
read -p "  + Create only root folder? [y/n] " ONLY_ROOT_FOLDER

if [ "$ONLY_ROOT_FOLDER" == "y" ] || [ "$ONLY_ROOT_FOLDER" == "yes" ]; then
    echo "  + Generating only root folder config."

    # Define user.name and user.email
    USER_NAME="Vlad Nedelcu"
    USER_EMAIL="Vlad.Nedelcu@corsearch.com"

    # Create projects dir and setup .gitconfig for root
    mkdir -p "${PROJECTS_ROOT}"
    setupProjectGitConfig "${PROJECTS_ROOT}" "${USER_NAME}" "${USER_EMAIL}"
else
    echo "  + Generating multiple sub-projects in projects folder"
    # Define per-directory identities
    #
    # NOTES:
    # - no spaces allowed after the comma delimiters
    # - should have the following pattern: projects_directory,git_commit_name,git_commit_email
    PROJECTS=(
        github.com-personal,"Vlad Nedelcu","Vlad.Nedelcu@corsearch.com"
    )

    # For each pair specified in PROJECTS, generate the folder and .gitconfig
    for project in "${PROJECTS[@]}"; do
        project_dir_name=$(echo ${project} | cut -d ',' -f 1)
        user_name=$(echo ${project} | cut -d ',' -f 2)
        user_email=$(echo ${project} | cut -d ',' -f 3)

        setupProjectGitConfig "${project_dir_name}" "${user_name}" "${user_email}"
    done
fi

echo "> Projects folder generated successfully !!"