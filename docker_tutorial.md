1.0. How to install docker for MAC?
        
        https://docs.docker.com/docker-for-mac/
1.1. How to check eaither instalation is succesfull?
        
        docker -v
        docker run hello-world
1.2. How to see the list of all available containers?
        
        docker ps
        docker ps -a
1.3. How to remove a container?
        
        docker rm CONTAINER_ID
1.4. How to create your first docker image?
        
        # create Dockerfile with the text below
                FROM ubuntu:latest

                CMD echo 'Hello this is the first container I have build'
        # build docker
        
                docker build . -t vlad_hello_world
        # run docker 
                
                docker run vlad_hello_world
2.1. How to run a docker container on the specific port?
        
        docker run -d -p 84:80 container_name
2.2. How to get inside the specific container?
        
        docker run -it ubuntu:latest /bin/bash
        
        # if you want to clean a container after exiting use 
          docker run -it --rm ubuntu:latest /bin/bash
        # if you want to get access to the already working container 
          docker exec -it container_id /bin/bash
        
2. How to see logs after docker-compose up command?
        
        docker-compose logs -f
3. How to reacreate containerers after docker-compose up?
        
        docker-compose build --no-cache
4. How to install Rails on the docker image?
        
        https://gist.github.com/juggleross/811b604cdf3f583512d599c8bc8e3bf9
        
5. How to run docker with rails on the digital ocean?
        
        https://coderjourney.com/deploy-docker-digital-ocean/

6.1. Rails with docker video tutorial
        
        https://www.youtube.com/channel/UCeMoPFyEAoQz398VAWx4BZg/videos
6.2. Udemy docker 8-h course
        
        https://coursehunters.net/course/docker-ot-a-do-ya-swarm-jenkins

