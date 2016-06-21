# vagrantWebDev

Box versions and description can be found at

* [https://atlas.hashicorp.com/alesl/boxes/vagrantWebDev](https://atlas.hashicorp.com/alesl/boxes/vagrantWebDev)

Simple to use Vagrant virtual host setup for you to handle of web development. All that you have to do to get started is run the started command:

* `git clone https://github.com/celavi/vagrantWebDev`
* `cd VagrantPHP`
* `vagrant up`

Now all that is left is to put your projects in the `sites` directory and code to your hearts content! When you are done you can run `vagrant halt` to freeze the Vagrant VM.

## Box
- debian/jessie64 with zsh + oh-my-zsh

![Debian Jessie 64](https://cloud.githubusercontent.com/assets/99165/15125182/d34d272a-162b-11e6-8516-9fa4347d3635.png)

## NginX + PHP-FPM + PHP 5.6.20 + Composer
IP: `localhost/127.0.0.1`

Port: `8080 (This is forwarded to our VM's 80 port)`

![phpinfo](https://cloud.githubusercontent.com/assets/99165/15125201/ec6f00c0-162b-11e6-9cbe-ac7c9f3f3c0f.png)

![Composer](https://cloud.githubusercontent.com/assets/99165/15125208/f33863a6-162b-11e6-8420-b563368703bf.png)

## NodeJS

Port: `3000 (This is forwarded to our VM's 3000 port)`

![NodeJS](https://cloud.githubusercontent.com/assets/99165/15125448/2b0f6df0-162d-11e6-9a0c-d205bffc133e.png)

## Databases

### MariaDb

IP: `localhost/127.0.0.1`

Port: `3306 (This is forwarded to our VM's 3306 port)`

Username: `root`

Password: `password`

### MongoDB

IP: `localhost/127.0.0.1`

Port: `27017 (This is forwarded to our VM's 27017 port)`

### Redis

IP: `localhost/127.0.0.1`

Port: `6379 (This is forwarded to our VM's 6379 port)`

## Tools

### Adminer
Access: `http://localhost:8080/Adminer/`

Username: `root`

Password: `password`

![Adminer](https://cloud.githubusercontent.com/assets/99165/15125213/f8a540ac-162b-11e6-8652-495d3016ca0d.png)

### Adminer Editor
Access: `http://localhost:8080/AdminerEditor/`

Username: `root`

Password: `password`

### RockMongo
Access: `http://localhost:8080/rockmongo/`

Username: `admin`

Password: `admin`

![rockmongo](https://cloud.githubusercontent.com/assets/99165/15125216/fcf6b24e-162b-11e6-84c8-1607614496fa.png)

### phpRedisAdmin
Access: `http://localhost:8080/phpRedisAdmin/`

![phpRedisAdmin](https://cloud.githubusercontent.com/assets/99165/15125220/018544d8-162c-11e6-9562-53f4234caf8d.png)

## License
vagrantWebDev is licensed under the MIT License - see the LICENSE file for details.
