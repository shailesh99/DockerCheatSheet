#DockerMachine
#Docker Machine Copy
sudo docker-machine scp -r ./example/ myvm1:/home/app


#Push
#First tag a local image with the new repo and tag
#docker image tag local_image:tag new_repo/image:tag
docker image tag ubuntu:latest shailesh99/myubuntu:latest
#then push the image
docker push shailesh99/myubuntu:tagname

#run Ubuntu container and keep it running
docker run -d --rm --name ubuntu shailesh99/myubuntu sleep 1000
