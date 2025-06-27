# 4R-4S-16C Multi-Area OSPF Lab

This project simulates a multi-area OSPF network topology using [Containerlab](https://containerlab.dev/) with:
- 4 FRRouting-based routers (R1–R4)
- 4 Arista cEOS switches (S1–S4)
- 16 Debian-based clients (C1–C16)

It is intended for experimentation and educational purposes within software-defined networking and routing protocol studies.

---

## 🧱 Topology Overview

- **OSPF** is configured between routers (multi-area setup).
- Clients connect to switches but are configured with static IPs for testing.
- Switches use the Arista cEOS image to simulate L2 behavior.

### 🔍 Topology Graph

A visual representation of the network topology:

![Topology Graph](topology.svg)

> (Generated from `my_topology.dot` using Graphviz.)

---

## 🚀 Setup Instructions

### ✅ 1. Install dependencies

Make sure you have the following installed on your VM:
- Docker
- Containerlab (v0.68+)
- Graphviz (for generating SVG)

```bash
sudo apt update
sudo apt install graphviz
bash -c "$(curl -sL https://get.containerlab.dev)"
```

---

### ✅ 2. Build custom client image

```bash
docker build -t my-client:latest -f client.Dockerfile .
```

---

### ✅ 3. Deploy the topology

```bash
sudo containerlab deploy -t 4R-4S-16C.clab.yml
```

---

### ✅ 4. Initialize clients

Assign static IPs to all 16 clients:

```bash
./client-init.sh
```

---

### ✅ 5. Test the lab

Run connectivity checks (router-to-router and client states):

```bash
./test-connectivity.sh
```

---

### ✅ 6. Optional: View the topology graph

```bash
dot -Tsvg my_topology.dot -o topology.svg
xdg-open topology.svg
```

---

## 🧹 Teardown

To destroy the lab:

```bash
sudo containerlab destroy -t 4R-4S-16C.clab.yml
```

---

## 📁 Project Structure

```
.
├── 4R-4S-16C.clab.yml         # Containerlab topology file
├── client.Dockerfile          # Custom Debian-based image with ping/ip tools
├── client-init.sh             # Script to assign static IPs
├── test-connectivity.sh       # Script to verify basic network function
├── my_topology.dot            # Generated network graph in DOT format
├── R1–R4/                     # FRR config folders (frr.conf, daemons)
├── S1–S4/                     # Arista switch nodes
└── .tls/, authorized_keys     # Optional keys or certs (not needed for basic deployment)
```

---

## 👤 Author

Hamid (shared via GitHub for supervisor review)
