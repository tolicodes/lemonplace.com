# Install
This project is based off [Docker running Nginx, PHP, MySQL, and PHPMyAdmin]. More info can be found there.

1. Download
    * [Docker](https://docs.docker.com/engine/installation/)
    * [Docker Compose](https://docs.docker.com/compose/install/)
    * Homebew: `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
    * Node `brew install node`
    * Yarn `sudo npm i -g yarn`

# Run the application

1. Run
    ```
    yarn up
    ```

3. Open your favorite browser :

    * [http://localhost:8070](http://localhost:8070/)
    * [http://localhost:8080](http://localhost:8080/) PHPMyAdmin (username: root, password: root)

4. Stop and clear services

    ```sh
    yarn down
    ```

# Ports
This project use the following ports :

| Server     | Port | Link                                  |
|------------|------|---------------------------------------|
| MySQL      | 8989 | mysql://localhost:8989 -u root -proot |
| PHPMyAdmin | 8080 | http://localhost:8080                 |
| Nginx      | 8070 | http://localhost:8070/                |
| Nginx SSL  | 3000 | http://localhost:3000/                |

### Project tree

```sh
.
├── Makefile
├── README.md
├── data - this is where mysql data is persisted
│   └── db
│       ├── dumps
│       └── mysql
├── docker-compose.yml - sets up the docker server
├── etc - config files
│   ├── nginx
│   │   ├── default.conf
│   │   └── default.template.conf
│   ├── php
│   │   └── php.ini
│   └── ssl
└── web
    ├── app - do not use it
    │   ├── composer.json.dist
    │   ├── phpunit.xml.dist
    │   ├── src
    │   │   └── Foo.php
    │   └── test
    │       ├── FooTest.php
    │       └── bootstrap.php
    └── public - put your files here
        └── index.php
```

## Configure Nginx With SSL Certificates

You can change the host name by editing the `.env` file.

If you modify the host name, do not forget to add it to the `/etc/hosts` file.

1. Generate SSL certificates

    ```sh
    source .env && sudo docker run --rm -v $(pwd)/etc/ssl:/certificates -e "SERVER=$NGINX_HOST" jacoelho/generate-certificate
    ```
