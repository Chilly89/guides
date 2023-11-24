## Install Shardeum

#### [WebSite](https://shardeum.org/) | [Twitter](https://twitter.com/shardeum) | [GitHub](https://github.com/Shardeum)

```bash
sudo apt update && sudo apt upgrade -y
sudo apt-get install curl && sudo apt update -y
sudo apt install docker.io

# version
docker --version

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# docker-compose version
docker-compose --version

curl -O https://gitlab.com/shardeum/validator/dashboard/-/raw/main/installer.sh && chmod +x installer.sh && ./installer.sh

curl localhost:9001/nodeinfo
```
