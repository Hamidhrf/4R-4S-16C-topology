#!/bin/bash

echo " Testing router-to-router pings..."
pairs=(R1-R2 R2-R3 R3-R4 R4-R1)

for pair in "${pairs[@]}"; do
  src=$(echo $pair | cut -d'-' -f1)
  dst=$(echo $pair | cut -d'-' -f2)
  result=$(docker exec -i clab-4R-4S-16C-topology-$src ping -c 1 $dst > /dev/null && echo "True" || echo "False")
  echo " $src -> $dst: $result"
done

echo ""
echo " Checking client containers status..."
for i in {1..16}; do
  cid="C$i"
  status=$(docker exec -i clab-4R-4S-16C-topology-$cid ip a | grep -q inet && echo "UP" || echo "DOWN")
  echo " $cid: $status"
done
