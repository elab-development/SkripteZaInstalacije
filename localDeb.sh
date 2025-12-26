#!/bin/bash


http="https://cdn.localwp.com/releases-stable/9.2.9+6887/local-9.2.9-linux.deb?_gl=1*zpcskv*_gcl_au*NTk3MTYyMDAxLjE3NjYxNDM1ODA.*_ga*OTMwNzM2NjM4LjE3NjYxNDM1NzU.*_ga_QQ5FN8NX8W*czE3NjYxNDM1NzUkbzEkZzEkdDE3NjYxNDQxNzkkajYwJGwwJGg0MTQ4NzIxNw.."


curl --output local.deb $http

apt update 

apt dpkg --configure -a

apt install -y ./local.deb



