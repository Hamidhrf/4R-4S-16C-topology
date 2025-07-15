#!/bin/bash

echo "Configuring clients connected to R1..."
for i in {1..4}; do
  docker exec -it clab-4R-4S-16C-topology-C$i ip route del default || true
done
docker exec -it clab-4R-4S-16C-topology-C1 ip addr add 10.0.1.2/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C1 ip route add default via 10.0.1.1
docker exec -it clab-4R-4S-16C-topology-C2 ip addr add 10.0.1.3/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C2 ip route add default via 10.0.1.1
docker exec -it clab-4R-4S-16C-topology-C3 ip addr add 10.0.1.4/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C3 ip route add default via 10.0.1.1
docker exec -it clab-4R-4S-16C-topology-C4 ip addr add 10.0.1.5/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C4 ip route add default via 10.0.1.1

echo "Configuring clients connected to R2..."
for i in {5..8}; do
  docker exec -it clab-4R-4S-16C-topology-C$i ip route del default || true
done
docker exec -it clab-4R-4S-16C-topology-C5 ip addr add 10.0.2.2/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C5 ip route add default via 10.0.2.1
docker exec -it clab-4R-4S-16C-topology-C6 ip addr add 10.0.2.3/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C6 ip route add default via 10.0.2.1
docker exec -it clab-4R-4S-16C-topology-C7 ip addr add 10.0.2.4/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C7 ip route add default via 10.0.2.1
docker exec -it clab-4R-4S-16C-topology-C8 ip addr add 10.0.2.5/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C8 ip route add default via 10.0.2.1

echo "Configuring clients connected to R3..."
for i in {9..12}; do
  docker exec -it clab-4R-4S-16C-topology-C$i ip route del default || true
done
docker exec -it clab-4R-4S-16C-topology-C9 ip addr add 10.0.3.2/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C9 ip route add default via 10.0.3.1
docker exec -it clab-4R-4S-16C-topology-C10 ip addr add 10.0.3.3/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C10 ip route add default via 10.0.3.1
docker exec -it clab-4R-4S-16C-topology-C11 ip addr add 10.0.3.4/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C11 ip route add default via 10.0.3.1
docker exec -it clab-4R-4S-16C-topology-C12 ip addr add 10.0.3.5/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C12 ip route add default via 10.0.3.1

echo "Configuring clients connected to R4..."
for i in {13..16}; do
  docker exec -it clab-4R-4S-16C-topology-C$i ip route del default || true
done
docker exec -it clab-4R-4S-16C-topology-C13 ip addr add 10.0.4.2/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C13 ip route add default via 10.0.4.1
docker exec -it clab-4R-4S-16C-topology-C14 ip addr add 10.0.4.3/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C14 ip route add default via 10.0.4.1
docker exec -it clab-4R-4S-16C-topology-C15 ip addr add 10.0.4.4/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C15 ip route add default via 10.0.4.1
docker exec -it clab-4R-4S-16C-topology-C16 ip addr add 10.0.4.5/28 dev eth1
docker exec -it clab-4R-4S-16C-topology-C16 ip route add default via 10.0.4.1
