# 🚀 Default scripts

Collection of scripts for installing:
- cool plugins such as Papirus Icons and Neofetch
- VScode text editor and some plugins (check the script)
- Docker and `docker-compose`

## Usage

You can run independently each script to install only one of the items above, but in order to run them all please refer
to using the `Makefile`. By running the command:
```shell
make all
```
You will install all of the above.

### 1. VSCode

To install VSCode text editor and plugins run:
```shell
make init-vscode
```

### 2. Docker

To install Docker and configure the docker user run:
```shell
make init-docker
```

> 👻 NOTES: Don't forget to log off and add the docker group afterwards
There is a yellow message displayed in the installation workflow

### 3. Cool plugins 💪

To install cool plugins run:
```shell
make init-cool-plugins
```