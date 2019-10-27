#removeimages.sh

echo first we remove running containers
for container in `docker container ps -a -q`
do 
	echo "docker rm $container"
	eval "docker rm $container"
done

echo next we remove images
for images in `docker images -q`
do 
	echo "docker rmi $images"
        eval "docker rmi $images"
done

echo verify all clean

docker ps -a
docker images -a
