_docker_compose_bash() {
  docker-compose run --rm $1 /bin/bash
}

alias docker-cleanup='docker images -fq dangling=true | xargs docker rmi'
alias docker-elixir='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app trenpixster/elixir:latest /bin/bash'
alias docker-ruby='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app ruby:2.1.5 /bin/bash'
alias docker-node='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app node:0.10 /bin/bash'

alias dc-bash=_docker_compose_bash
