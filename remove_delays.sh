#!/bin/bash
PREFIX="clab-4R-4S-16C-topology"

remove_delay_eth_numbered() {
    local container=$1
    
    interfaces=$(docker exec $container bash -c "ls /sys/class/net | grep -E '^eth[0-9]+'")
    for iface in $interfaces; do
        echo " → $container: removing delay from $iface"
        docker exec $container tc qdisc del dev $iface root || true
    done
}

echo "Removing delays (only eth0/eth1/eth2…)"

# Switches
for sw in S1 S2 S3 S4; do
    container="${PREFIX}-${sw}"
    remove_delay_eth_numbered $container
done

# Clients
for c in {1..16}; do
    container="${PREFIX}-C${c}"
    remove_delay_eth_numbered $container
done

echo "Cleaned delays"
