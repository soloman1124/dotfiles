_docker_compose_bash() {
  docker-compose run --rm $1 /bin/bash
}

alias docker-ps-cleanup='docker ps -aq -f status=exited | xargs docker rm'
alias docker-cleanup='docker system prune'
alias docker-elixir='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app trenpixster/elixir:latest /bin/bash'
alias docker-ruby='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app ruby:2.1.5 /bin/bash'
alias docker-node='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app node:0.10 /bin/bash'
alias docker-go='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app --entrypoint /bin/bash soloman1124/go-tools:latest'
alias docker-gore='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app soloman1124/go-tools:latest'

alias dc-bash=_docker_compose_bash
