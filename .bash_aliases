alias docker-remove-exited='docker rm $(docker ps -f status=exited -q)'
