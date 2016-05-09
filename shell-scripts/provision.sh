#!/usr/bin/env bash
echo Creating symlinks for Adminer, AdminerEditor, rockmongo and phpRedisAdmin
ln -s /usr/local/src/Adminer /vagrant/sites/Adminer
ln -s /usr/local/src/AdminerEditor /vagrant/sites/AdminerEditor
ln -s /usr/local/src/rockmongo /vagrant/sites/rockmongo
ln -s /usr/local/src/phpRedisAdmin /vagrant/sites/phpRedisAdmin
