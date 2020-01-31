#DockerMachine
#Docker Machine Copy
sudo docker-machine scp -r ./example/ myvm1:/home/app

#Build the image
#docker build -t [repository]/(image):[tag]
docker build -t shailesh99/myubuntu:1.1

#Push to docker hub
#First tag a local image with the new repo and tag
#docker image tag local_image:tag new_repo/image:tag
docker image tag ubuntu:latest shailesh99/myubuntu:1.1
#then push the image
docker push shailesh99/myubuntu:1.1

#run Ubuntu container and keep it running
docker run -d --rm --name ubuntu shailesh99/myubuntu sleep 1000
docker run -d --rm --name ubuntuc ubuntu top -c -b



