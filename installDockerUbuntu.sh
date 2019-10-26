#installDockerUbuntu.sh

#update
echo update
sudo apt-get update
echo press enter to install packages...
read x

#install packages required
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

echo press enter to download key..
read x
# add gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo fingerprint...
sudo apt-key fingerprint 0EBFCD88

echo press enter to add the repo
read x
#add the repo
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo press enter to update
read x
#update so that we see the repo we added
sudo apt-get update

echo press enter to install the repo
read x
#install the repo
sudo apt-get install -y docker-ce=5:18.09.5~3-0~ubuntu-bionic docker-ce-cli=5:18.09.5~3-0~ubuntu-bionic containerd.io

echo press enter to set the user permissions
read x
#set permissions for user
sudo usermod -a -G docker myuser

echo testing.....
#test our work
docker run hello-world

