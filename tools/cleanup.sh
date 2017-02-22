
docker ps -a -q | xargs -n 1 -I {} docker rm {}
docker images -q --filter "dangling=true" | xargs docker rmi

