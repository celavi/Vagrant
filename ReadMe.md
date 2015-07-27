# vagrantWebDev

Simple to use Vagrant virtual host setup for you to handle of web development. All that you have to do to get started is run the started command:

* `git clone https://github.com/celavi/vagrantWebDev`
* `cd VagrantPHP`
* `vagrant up`

Now all that is left is to put your projects in the `sites` directory and code to your hearts content! When you are done you can run `vagrant halt` to freeze the Vagrant VM.

## NginX
IP: `localhost/127.0.0.1`

Port: `8080 (This is forwarded to our VM's 80 port)`

## NodeJS

Port: `3000 (This is forwarded to our VM's 3000 port)`

## Databases

### MySQL

IP: `localhost/127.0.0.1`

Port: `3306 (This is forwarded to our VM's 3306 port)`

Username: `root`

Password: `password`


### MongoDB

IP: `localhost/127.0.0.1`

Port: `27017 (This is forwarded to our VM's 27017 port)`

Username: `root`

Password: `password`


### Redis

IP: `localhost/127.0.0.1`

Port: `6379 (This is forwarded to our VM's 6379 port)`


## TODO
* multitail
* phpmyAdmin
* redismyadmin
* rockmongo
