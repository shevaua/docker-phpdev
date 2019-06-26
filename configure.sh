#!/bin/bash

network=''
minhosts=1

function is_network_wrong() {
    # TODO check network
    return 1;
}

function ask_network() {
    read -p 'Network:' network
}

ask_network
while is_network_wrong; do
    echo $network is not a network?!
    ask_network
done;
