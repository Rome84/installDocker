#installDockerCentOS.sh

echo install packages..
sudo yum install -y device-mapper-persistent-data lvm2

echo press enter to add repo
read x
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

echo press enter to install docker...
read x
sudo yum install -y docker-ce-18.09.5 docker-ce-cli-18.09.5 containerd.io

echo press enter to start docker
read x
sudo systemctl start docker

echo press enter to enable docker
read x
sudo systemctl enable docker

echo add user to docker group so that we manage docker from this account
read 
sudo usermod -a -G docker myuser

echo after you log out and log back in you can test...
echo docker run hello-world


