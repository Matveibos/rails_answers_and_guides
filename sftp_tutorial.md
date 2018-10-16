1. How to start local sftp server on mac?

            # use this docker container with sftp server
            https://github.com/atmoz/sftp

            # create docker compose file
            # where /Users/vladislav_hilko/upload your mirror folder

             sftp:
                image: atmoz/sftp
                volumes:
                    - /Users/vladislav_hilko/upload:/home/foo/upload
                ports:
                    - "2222:22"
                command: foo:pass:1001

            # connect to your local sftp server
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
