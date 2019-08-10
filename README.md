# docker-boilerplate
This is a boilerplate or template for starting a Docker container-based project.
It provided convenient templates that can be customized for new projects.

# Installation and Usage
- It's assumed that you are starting with a fresh installation of Ubuntu 18.04
LTS on a 64-bit machine. It's also assumed that you are installing as
a [non-root user with sudo privileges](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-16-04).

- Install Docker on the host
system. [This tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04) shows
how to install Docker on a Ubuntu system. It's specifically targeted to Digital
Ocean's cloud servers, but should work for any Ubuntnu system.

- Install Docker Compose too. [This tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04)
shows how to do so on a Ubuntu system.

- Clone this repository in your home directory with the following command:

`git clone https://github.com/christroutner/docker-boilerplate`

- Build the docker container by running the build script:

`docker-compose build`

- Customize the `volumes` setting in the [docker-compose.yml](docker-compose.yml)
file in order to choose where you want persistent data stored.

- Run the container:

`docker-compose up -d`

## Docker Debugging
The following commands are useful for debugging applications like this one
inside a Docker container. The commands below help you to enter a shell
inside the container.

* `docker ps -a`
  * Show all docker processes, including ones that are stopped.

* `docker container run --name test-container --rm -it <Image ID> bash`
  * This command will run a docker container and drop you into a bash shell.
  All you need is the image ID.

* `docker exec -it <container ID> bash`
  * This command will let you enter a bash shell inside a running Docker container.

# License
[MIT License](LICENSE.md)
