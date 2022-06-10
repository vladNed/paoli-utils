.PHONY: all
all:
	- echo "> Git Workflow started"
	- default-config
	- projects-init

projects-init:
	- ./init_projects_scope.sh

projects-add:
	- ./add_projects_scope.sh

projects-rm:
	- ./remove_project_scope.sh

default-config:
	- ./configure_default_git.sh
