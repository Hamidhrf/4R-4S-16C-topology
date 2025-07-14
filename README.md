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

<img width="990" alt="Screenshot 2025-06-26 at 4 11 02 PM" src="https://github.com/user-attachments/assets/80a8ab2b-39d1-4a55-a658-2897d6c656d9" />

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

Run connectivity checks:

```bash
./client-ping-matrix.sh
```

---

###  6. View the topology graph

```bash
sudo containerlab graph -t ./4R-4S-16C.clab.yml
```
