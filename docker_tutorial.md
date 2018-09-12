1.0. How to install docker for MAC?
        
        https://docs.docker.com/docker-for-mac/
1.1. How to check eaither instalation is succesfull?
        
        docker -v
        docker run hello-world
1.2. How to see the list of all available containers?
        
        docker ps
        docker ps -a
1.3. How to remove a container/image?
        
        docker rm CONTAINER_ID
        docker rmi IMAGE_ID
1.3.1. How to remove all containers?
        
        docker rm CONTAINER_ID CONTAINER_ID_1 CONTAINER_ID_2
        # get list of all cantainer id
          docker ps -q
        # the remove it
          docker rm $(docker ps -q -a)
1.4. How to create your first docker image?
             
        # create Dockerfile with the text below
                FROM ubuntu:latest

                CMD echo 'Hello this is the first container I have build'
        # build docker
        
                docker build . -t vlad_hello_world
        # run docker 
                
                docker run vlad_hello_world
        # check your image existing
                
                docker images
2.1. How to run a docker container on the specific port?
        
        docker run -d -p 84:80 container_name
2.2. How to get inside the specific container?
        
        docker run -it ubuntu:latest /bin/bash
        
        # if you want to clean a container after exiting use 
          docker run -it --rm ubuntu:latest /bin/bash
        # if you want to get access to the already working container 
          docker exec -it container_id /bin/bash
3.1. How to add ruby to your docker container?
       
        # go to the https://hub.docker.com/ and check the ruby image existing 
        # run the following command ( -it means - interactive )
        docker run -it --rm ruby:latest /bin/bash

3.2. How to run a ruby script from your computer inside the docker container?
        
        docker run -it --rm -v "$(pwd)/my_script_name.rb:/home/another_name.rb" ruby:latest /bin/bash  

3.3. How to build a docker image with pre-instaled vim ( for example )?
        
        # create Dockerfile
        FROM ubuntu:latest

        RUN apt-get update && apt-get install -y --no-install-recommends vim && apt-get clean 
        
        # create build
          docker build . -t vlad_hello_world
        # run build
          docker run -it --rm vlad_hello_world /bin/bash
        # check 
          vi -v
3.4. How to add a healthcheck for docker?
        
        # Dockerfile
        FROM tomcat:latest

        RUN apt-get update && apt-get install -y --no-install-recommends curl && apt-get clean

        HEALTHCHECK --interval=5s --timeout=3s --retries=3 \
              CMD curl -f http://localhost:8080 || exit 1
        # then 
        
        docker build . -t my-tomcat
        docker run -d -P my-tomcat
        
4.1. How to see docker logs?
        
        docker logs container_id
        # restricted by line count
          docker logs --tail max_line_number container_id
        # see logs online
          docker logs --follow container_id
5.1. How to use docker-compose?
        
        # create docker-compose.yml
                version: '3.1'
                services:
                  tomcat1:
                    image: tomcat:latest
                    ports:
                      - 1002:80
                      - 1003:8080
                      - 1013:8080
                  tomcat2:
                    image: tomcat:latest
                    ports:
                      - 1004:80
                      - 1005:8080
                    environment:
                      TEST_ENV_VAR: tests
         # run docker-compose
                docker-compose up 
                # or docker-compose up -d
         # You have an access to the TEST_ENV_VAR
                
                echo $TEST_ENV_VAR
5.2. How to stop docker-compose?
        
        docker-compose down
6.1. How to create docker network?
        
        docker network create name_of_the_network
6.2. How to see the list of the networks?
        
        docker network ls
6.3. How to see what containers are inside the network?
        
        docker network inspect name_of_the_network
6.4. How to connect/disconect a container to/from the network?
        
        docker network connect network_id container_id
        docker network disconnect network_id container_id
2. How to see logs after docker-compose up command?
        
        docker-compose logs -f
3. How to reacreate containerers after docker-compose up?
        
        docker-compose build --no-cache
4. How to install Rails on the docker image?
        
        https://gist.github.com/juggleross/811b604cdf3f583512d599c8bc8e3bf9
        
5. How to run docker with rails on the digital ocean?
        
        https://coderjourney.com/deploy-docker-digital-ocean/
5.1. How to pull rails app to gigital ocean?

        https://www.youtube.com/watch?v=jlVrYgVEl6M
        
        docker-machine create --driver digitalocean --digitalocean-access-token=aa9399a2175a93b17b1c86c807e08d3fc4b79876545432a629602f61cf6ccd6b --digitalocean-size s-1vcpu-1gb  blog
        # or
        export TOKEN=aa9399a2175a93b17b1c86c807e08d3fc4b79876545432a629602f61cf6ccd6b
        docker-machine create --driver digitalocean --digitalocean-access-token $TOKEN --digitalocean-size s-1vcpu-1gb  blog
        
        docker-machine env blog
        eval $(docker-machine env blog)
        
        docker-compose up -d db
        docker-compose build app
        
        docker-compose -f docker-compose.prod.yml run --rm  app rake db:create db:migrate

        docker-compose -f docker-compose.prod.yml up app

        docker-machine ip blog
        # go to this ip dress
        http://159.65.176.203:3000/
6.1. Rails with docker video tutorial
        
        https://www.youtube.com/channel/UCeMoPFyEAoQz398VAWx4BZg/videos
6.2. Udemy docker 8-h course
        
        https://coursehunters.net/course/docker-ot-a-do-ya-swarm-jenkins

