function docker-clean
  echo "===== Removing all containers"
  command docker stop (docker ps -aq)
  command docker rm -f (docker ps -aq)

  echo "===== Removing all volumes"
  command docker volume rm -f (docker volume ls -q -f dangling=true)

  echo "===== Removing all images"
  command docker rmi -f (docker images -aq)
end
