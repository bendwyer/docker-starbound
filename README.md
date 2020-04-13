# docker-starbound
Dockerized Starbound server.

## How to use
1) Use docker-compose to deploy the container.

       docker-compose up -d starbound

2) Download and install the Starbound server files.

       docker exec -it -u steam starbound bash -c '/home/steam/starbound/update.sh steam_username'
       
3) Done!

## Notes
- Runs as `steam` user rather than root
- No saved credentials; Steam credentials must be entered manually
- The `starbound_server.config` file is located inside the Docker volume  
       
       starbound-data/_data/storage/starbound_server.config

## Credit
https://github.com/Morgyn/docker-starbound  
https://github.com/CM2Walki/steamcmd
