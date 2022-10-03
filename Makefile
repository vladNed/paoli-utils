.PHONY: defaults

defaults:
	cd defaults ; make all

projects-add:
	cd git_configurations ; make projects-add

projects-rm:
	cd git_configurations ; make projects-rm