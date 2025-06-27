# 4R-4S-16C Multi-Area OSPF Lab

This project simulates a multi-area OSPF network topology using [Containerlab](https://containerlab.dev/) with:
- 4 FRRouting-based routers (R1–R4)
- 4 Arista cEOS switches (S1–S4)
- 16 Debian-based clients (C1–C16)

---

##  Topology Overview

- **OSPF** is configured between routers (multi-area setup).
- Clients connect to switches but are configured with static IPs for testing.
- Switches use the Arista cEOS image to simulate L2 behavior.

###  Topology Graph

A visual representation of the network topology:

![Topology Graph](topology.svg)

> (Generated from `my_topology.dot` using Graphviz.)

---

##  Setup Instructions

###  1. Install dependencies

install:
- Docker
- Containerlab 

```bash
sudo apt update
bash -c "$(curl -sL https://get.containerlab.dev)"
```

---

###  2. Build custom client image

```bash
docker build -t my-client:latest -f client.Dockerfile .
```

---

###  3. Deploy the topology

```bash
sudo containerlab deploy -t 4R-4S-16C.clab.yml
```

---

###  4. Initialize clients

Assign static IPs to all 16 clients:

```bash
./client-init.sh
```

---

###  5. Test the lab

Run connectivity checks (router-to-router and client states):

```bash
./test-connectivity.sh
```

---

### ✅ 6. View the topology graph

```bash
dot -Tsvg my_topology.dot -o topology.svg
xdg-open topology.svg
```
