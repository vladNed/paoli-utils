# 🧑‍🔧 Projects folder configuration + git

The scripts in here will create the default `projects` folder in the root were different github project scopes or other
projects scopes can of course be added.

## 1. Init

This script should be the first one to run `init_projects_scope.sh` which would create the default projects folder. It
has options to either only use the root `projects` or have multiple projects scopes under it.

> NOTE: The user name and user email should always be set for this file

Run with:
```shell
make projects-init
```

## 2. Add

Adding a new project to the `projects` folder.

Run with:
```shell
make projects-add
```

## 3. Remove

Removing an existing project scope from `projects` folder.

Run with:
```shell
make projects-rm
```