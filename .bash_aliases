alias docker-remove-exited='docker rm $(docker ps -f status=exited -q)'
alias docker-run-ssh-agent='docker run --rm -ti -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK'
alias docker-images-remove-dangling='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias docker-images-pull-all='for i in $(docker images --filter "dangling=false" --format "{{.Repository}}"); do echo $i && docker pull $i; done'
