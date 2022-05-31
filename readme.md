# Applifaction Development Environment
Development environment for **[Shopware 6](https://www.shopware.com/), [Magento](https://magento.com/), [Wordpress](https://wordpress.com/)** and many more. 

This environment is based on [Dockware](https://github.com/dockware/dockware) <3

## How to build & tag
```
docker-compose build
docker tag dockerfaction_essentials:latest dockerfaction/essentials:latest
```

## Docker Compose
Use this image in a **docker-compose.yaml** file in your project, which looks like this.  
Please make sure to **build** the image locally, **before** using it at your project.

Make sure to replace: 
- `<YOUR_PROJECT_CONTAINER_NAME>`
- `<YOUR_HOST_IP_ADDRESS>`

```docker-compose.yaml
version: '3'

services:
  shop:
    container_name: <YOUR_PROJECT_CONTAINER_NAME>
    image: dockerfaction/essentials:latest
    ports:
      - "80:80"     # apache2
      - "9998:9998" # watch storefront proxy
      - "3306:3306" # mysql port
    volumes:
      - "./src:/var/www/html"
      - "/var/run/mysqld/:/var/run/mysqld/"
    networks:
      - web
    environment:
      - XDEBUG_ENABLED=1
      - PHP_VERSION=7.4
      - DEBUG_REMOTE_HOST=<YOUR_HOST_IP_ADDRESS>

## ***********************************************************************
##  NETWORKS
## ***********************************************************************
networks:
  web:
    external: false
```

## Thanks
Thank to Dockware for providing such amazing docker images  
=> Check it out: https://github.com/dockware/dockware

## License
As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.