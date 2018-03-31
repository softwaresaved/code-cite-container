# getpapers

A docker container for running the [getpapers](https://github.com/ContentMine/getpapers) tool.

This container is automatically built by [DockerHub](https://hub.docker.com/r/softwaresaved/getpapers/) and can be run with:

```bash
docker run softwaresaved/getpapers --help
```

On linux and mac systems you may need to prepend the docker command with `sudo`.

This will print a list of commands to the command-line. Full documentation on getpapers can be found at the [getpapers repository](https://github.com/ContentMine/getpapers).

To download full content from open access articles, you will need to specify a [volume](https://docs.docker.com/storage/volumes/) using the `-v` flag. This maps a local folder to a folder within the docker container. In the following example I map the local folder `/data/getpapers` to the folder `/data/getpapers` within the docker container.

```bash
sudo docker run -v /data/getpapers:/data/getpapers softwaresaved/getpapers --query 'github.com' -x -o /data/getpapers/
```

The exact folder locations are not important, but the docker folder reference should match the output flag (`-o`) given to the `getpapers`. For simplicity you might consider using environment variables like so:

```bash
export LOCAL_DATA_DIR=~/data #wherever you want to store the output
export DOCKER_DATA_DIR=/data/getpapers

sudo docker run -v $LOCAL_DATA_DIR:$DOCKER_DATA_DIR softwaresaved/getpapers --query 'github.com' -x -o $DOCKER_DATA_DIR

```
