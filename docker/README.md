## Description

  run.tpl is a template that can be used with `docker inspect` to regenerate the `docker run` command used to generate an existing container.  See https://gist.github.com/efrecon/8ce9c75d518b6eb863f667442d7bc679 for more details and to check for updates to run.tpl.

  See also https://stackoverflow.com/questions/32758793/how-to-show-the-run-command-of-a-docker-container for other solutions to the same problem.

## Synopsis

    docker inspect --format "$(<~/src/home/docker/run.tpl)" docker_container_name_or_id


