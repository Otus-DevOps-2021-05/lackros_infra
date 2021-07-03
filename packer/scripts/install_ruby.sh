#!/bin/bash
sudo apt-get --assume-yes update
sudo sleep 1m
sudo apt-get --assume-yes install ruby-full ruby-bundler build-essential
ruby -v
bundler -v
