_docker_compose_bash() {
  docker-compose run --rm $1 /bin/bash
}

_docker_devtools() {
  if [ $# -eq 1 ]; then
    docker run --rm -ti -p $1:$1 -v $(pwd):/usr/src/app -w /usr/src/app soloman1124/devtools /sbin/my_init -- bash -l
  else
    docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app soloman1124/devtools /sbin/my_init -- bash -l
  fi
}

_whalebrew_shell() {
  if [ $# -eq 1 ]; then
    whalebrew run --entrypoint=/bin/sh $(which $1)
  elif [ $# -eq 2 ]; then
    whalebrew run --entrypoint=$2 $(which $1)
  fi
}

alias docker-ps-cleanup='docker ps -aq -f status=exited | xargs docker rm'
alias docker-cleanup='docker system prune'
alias docker-elixir='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app trenpixster/elixir:latest /bin/bash'
alias docker-ruby='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app ruby:2.1.5 /bin/bash'
alias docker-node='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app node:0.10 /bin/bash'
alias docker-go='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app --entrypoint /bin/bash soloman1124/go-tools:latest'
alias docker-gore='docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app soloman1124/go-tools:latest'
alias docker-jupyter='docker run --rm -p 8888:8888 -v $(pwd):/home/jovyan/work jupyter/tensorflow-notebook:latest'


alias docker-devtools=_docker_devtools
alias dc-bash=_docker_compose_bash

alias whalebrew-shell=_whalebrew_shell
