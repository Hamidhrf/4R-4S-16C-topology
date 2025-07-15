#!/bin/bash
PREFIX="clab-4R-4S-16C-topology"

apply_delay_eth_numbered() {
    local container=$1
    local delay=$2
    
    interfaces=$(docker exec $container bash -c "ls /sys/class/net | grep -E '^eth[0-9]+'")
    for iface in $interfaces; do
        echo " → $container: applying ${delay} delay on $iface"
        docker exec $container tc qdisc add dev $iface root netem delay $delay || true
    done
}

echo "Applying delays (only eth0/eth1/eth2…)"

# Switches (5ms delay)
for sw in S1 S2 S3 S4; do
    container="${PREFIX}-${sw}"
    apply_delay_eth_numbered $container "5ms"
done

# Clients (default 5ms)
for c in {1..16}; do
    container="${PREFIX}-C${c}"
    apply_delay_eth_numbered $container "5ms"
done

# Special CH nodes (C1, C5, C9, C13) → override eth1 to 1ms
for ch in C1 C5 C9 C13; do
    container="${PREFIX}-${ch}"
    echo "Overriding delay for CH ($ch) → 1ms on eth1"
    docker exec $container tc qdisc change dev eth1 root netem delay 1ms || true
done

echo "delay applied."
