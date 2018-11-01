1. How to start local sftp server on mac?

        # use this docker container with sftp server
        https://github.com/atmoz/sftp

        # 1.1. create docker compose file: docker-compose.yml        
         sftp:
            image: atmoz/sftp
            volumes:
                - /Users/vladislav_hilko/upload:/home/foo/upload
            ports:
                - "2222:22"
            command: foo:pass:1001
 
        # where /Users/vladislav_hilko/upload - folder on your computer
        # /home/foo/upload - folder inside the docker container, foo - name, pass - password
        
        # 1.2. run docker-compose.yml
            docker-compose up
        # 1.3. (optional) You can enter inside the docker container with
            docker ps
            docker exec -it container_id /bin/bash
            
        # 2. Creating connection with your local sftp server
        # 2222 - is a port, foo - is a username, 10.6.84.47  - your computer ip

        sftp -P 2222 foo@10.6.84.47 
 
2. How to download a file from sftp with checking file existing?
            
        sftp = Net::SFTP.start(
          SFTP_CONFIG['ip'],
          SFTP_CONFIG['user'],
          password: SFTP_CONFIG['password'],
          port: SFTP_CONFIG['port']
        )

        sftp.stat(source) { |request| return false unless request.ok? }
        sftp.download!(source, destination)
