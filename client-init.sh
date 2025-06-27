#!/bin/bash

echo "Configuring clab-4R-4S-16C-topology-C1 with 10.0.1.11..."
docker exec -it clab-4R-4S-16C-topology-C1 ip addr add 10.0.1.11/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C1 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C2 with 10.0.1.12..."
docker exec -it clab-4R-4S-16C-topology-C2 ip addr add 10.0.1.12/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C2 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C3 with 10.0.1.13..."
docker exec -it clab-4R-4S-16C-topology-C3 ip addr add 10.0.1.13/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C3 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C4 with 10.0.1.14..."
docker exec -it clab-4R-4S-16C-topology-C4 ip addr add 10.0.1.14/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C4 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C5 with 10.0.1.15..."
docker exec -it clab-4R-4S-16C-topology-C5 ip addr add 10.0.1.15/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C5 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C6 with 10.0.1.16..."
docker exec -it clab-4R-4S-16C-topology-C6 ip addr add 10.0.1.16/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C6 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C7 with 10.0.1.17..."
docker exec -it clab-4R-4S-16C-topology-C7 ip addr add 10.0.1.17/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C7 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C8 with 10.0.1.18..."
docker exec -it clab-4R-4S-16C-topology-C8 ip addr add 10.0.1.18/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C8 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C9 with 10.0.1.19..."
docker exec -it clab-4R-4S-16C-topology-C9 ip addr add 10.0.1.19/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C9 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C10 with 10.0.1.20..."
docker exec -it clab-4R-4S-16C-topology-C10 ip addr add 10.0.1.20/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C10 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C11 with 10.0.1.21..."
docker exec -it clab-4R-4S-16C-topology-C11 ip addr add 10.0.1.21/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C11 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C12 with 10.0.1.22..."
docker exec -it clab-4R-4S-16C-topology-C12 ip addr add 10.0.1.22/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C12 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C13 with 10.0.1.23..."
docker exec -it clab-4R-4S-16C-topology-C13 ip addr add 10.0.1.23/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C13 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C14 with 10.0.1.24..."
docker exec -it clab-4R-4S-16C-topology-C14 ip addr add 10.0.1.24/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C14 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C15 with 10.0.1.25..."
docker exec -it clab-4R-4S-16C-topology-C15 ip addr add 10.0.1.25/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C15 ip link set eth1 up

echo "Configuring clab-4R-4S-16C-topology-C16 with 10.0.1.26..."
docker exec -it clab-4R-4S-16C-topology-C16 ip addr add 10.0.1.26/24 dev eth1
docker exec -it clab-4R-4S-16C-topology-C16 ip link set eth1 up

