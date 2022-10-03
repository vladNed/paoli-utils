# PAOLI (Packages And cOnfiguration utiLIties)
Scripts for setting up configurations, packages and utilities for ubuntu. It acts as a guide for installing helpful packages, configurations, directories and keys for a nice development experience. Very customizable with a touch of imposed defaults.

# Usage (in-progress)
For each of the folders that have a root `Makefile` please use the instructions in the `READMEs` to run each script or all


## 1. Defaults
Check the readme in `/defaults` folder to see all that will be installed.

To run the install all defaults:

Run with:
```shell
make defaults
```

## 2. Git projects
Adding a new project to the `projects` folder.

Run with:
```shell
make projects-add
```

Removing an existing project scope from `projects` folder.

Run with:
```shell
make projects-rm
```

