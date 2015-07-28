#!/usr/bin/env bash
echo Creating symlinks for phpMyAdmin, rockmongo and phpRedisAdmin
ln -s /usr/share/phpmyadmin /vagrant/sites/mysqlAdmin
ln -s /usr/share/rockmongo /vagrant/sites/mongoAdmin
ln -s /usr/share/phpRedisAdmin /vagrant/sites/redisAdmin
