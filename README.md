# docker-starbound
Dockerized Starbound server.

## How to use
1) Clone this repository.

       git clone https://github.com/bendwyer/docker-starbound.git

2) Use docker-compose to build the image and deploy a container.

       docker-compose up -d --build starbound

3) Download and install the Starbound server files.

       docker exec -it -u steam starbound /home/steam/starbound/update.sh steam_username
       
4) Done!

## Notes
- Runs as `steam` user rather than root
- No saved credentials; Steam credentials must be entered manually
- The `starbound_server.config` file is located inside the Docker volume  
       
       /starbound-data/_data/storage/starbound_server.config

## Credit
https://github.com/Morgyn/docker-starbound  
https://github.com/CM2Walki/steamcmd
