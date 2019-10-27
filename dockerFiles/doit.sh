# build image

echo press enter to build image
read x
docker build -t myimage .

echo press enger to run image
read x
docker run myimage

echo press enter to display image
read x
docker image ls
