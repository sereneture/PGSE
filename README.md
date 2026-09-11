# PGSE: Primitive-Growing Symbolic Evolution for Autonomous Swarm Controllers

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Status: Under Review](https://img.shields.io/badge/Status-Under%20Review-orange.svg)]()
[![Platform: Swarm Control](https://img.shields.io/badge/Domain-UAV%20Swarm%20Control-brightgreen.svg)]()

Official project showcase and rollout trajectory animations for:

> **Primitive-Growing Symbolic Evolution for Autonomous Swarm Controllers**  
> *Under Review at IEEE Transactions on Artificial Intelligence (IEEE TAI)*  
> *Authors: Wang Chen (王琛) et al.*

---

## 🌟 Research Highlights

- **Primitive-Growing Symbolic Evolution (PGSE)**: An autonomous closed-loop search framework that synthesizes, audits, and admits high-order geometric and topological primitives directly into typed symbolic controller trees to bridge representation gaps caused by sensor lesion or grammar incompleteness.
- **Strictly Controlled Benchmark Swarm Tasks**:
  - `QUEUE`: Autonomous in-trail line formation cruising and inter-agent spacing control without external target anchors.
  - `ENTRAP`: Multi-UAV target encirclement and pursuit of an agile maneuvering target with hard collision avoidance.
  - `VORTEX`: Self-centered counter-rotating orbital mill formation with high collective angular momentum.
  - `PACKING`: Self-assembly of dense hexagonal/triangular crystal lattice under strict spatial interaction cutoffs.
  - `CHAIN`: Multi-hop dynamic wireless communication relay maintaining continuous connectivity between maneuvering ground endpoints.
- **Circuit-Aware AST Projection**: Translates AST consumption contexts into actionable sensor DSL specifications, bridging high-level semantic reasoning with micro-level execution guarantees.
- **Interpretable White-Box Policies**: Evolved controllers execute as closed-form arithmetic trees with zero neural network inference latency and deterministic microsecond control cycles.

---

## 🎬 Swarm Scene Rollouts (5 Benchmark Tasks)

The table below showcases the closed-loop rollouts of champion controllers discovered by PGSE across **5 canonical swarm tasks**, evaluated under full 13-state quadrotor physical dynamics:

| Task / Scenario | Rollout Animation (Nominal Setting) | Emergent Phenomenon & Formation Property |
| :--- | :---: | :--- |
| **Task 1: QUEUE**<br>*(Autonomous Linear Queue)* | <img src="animations/task_queue.gif" width="280"/><br>**`task_queue.gif`** | Autonomous in-trail line formation cruising; uniform inter-agent spacing sustained via local centroid attraction ($\operatorname{mean}_{j \in \mathcal{N}_i(8)} \Delta \mathbf{p}_{ij}$). |
| **Task 2: ENTRAP**<br>*(Dynamic Target Encirclement)* | <img src="animations/task_entrap.gif" width="280"/><br>**`task_entrap.gif`** | Swarm agents surround, track, and stably encircle an evasive moving target (red star) via self-assembled protective radial spring potentials. |
| **Task 3: VORTEX**<br>*(Dual Counter-Rotating Mill)* | <img src="animations/task_vortex.gif" width="280"/><br>**`task_vortex.gif`** | Self-organized dual-lobe counter-rotating swirling orbits emerge from pure local peer-to-peer relative observations without global reference frames. |
| **Task 4: PACKING**<br>*(Hexagonal Lattice Crystal)* | <img src="animations/task_packing.gif" width="280"/><br>**`task_packing.gif`** | Dense triangular crystal self-assembly; dynamically adapts spatial interaction cutoffs to $4.6\,\text{m}$ to accommodate dense lattice geometry. |
| **Task 5: CHAIN**<br>*(Dynamic Communication Relay)* | <img src="animations/task_comm_relay.gif" width="280"/><br>**`task_comm_relay.gif`** | Forms and maintains an end-to-end multi-hop communication corridor between two maneuvering endpoints under strict local radio visibility ($R = 15\,\text{m}$). |

---

## 🌐 Synchronized Multi-Task Overview

Synchronized 1×5 multi-panel presentation across all five canonical tasks operating under discovered symbolic controllers:

<p align="center">
  <img src="animations/all_tasks_animation.gif" alt="Synchronized Multi-Task Swarm Trajectories" width="100%"/>
</p>

*(a) **QUEUE**: Autonomous in-trail line formation. (b) **ENTRAP**: Circumnavigation of an escaping target. (c) **VORTEX**: Dual counter-rotating orbital mill. (d) **PACKING**: Hexagonal crystal lattice assembly. (e) **COMM_RELAY**: Wireless relay chain tracking maneuvering ground endpoints.*

---

## 📋 Task Details & Lesion Recovery Properties

### 1. QUEUE (`task_queue.gif`)
- **Objective**: Swarm agents establish and preserve a coherent horizontal line queue while navigating in-trail with uniform spacing.
- **Lesion Recovery**: Synthesizes an $8\,\text{m}$ local centroid attractive field ($\operatorname{mean}_{j \in \mathcal{N}_i(8)} \Delta \mathbf{p}_{ij}$), achieving $133.2\%$ relative performance recovery after deprivation of nearest-neighbor distance and Laplacian terms.

### 2. ENTRAP (`task_entrap.gif`)
- **Objective**: Agents surround, track, and stably encircle an evasive maneuvering target while maintaining safety standoff distances and inter-agent collision avoidance.
- **Lesion Recovery**: Self-assembles protective radial spring potentials with bounded zero-distance denominators, restoring encirclement stability ($118.2\%$ recovery).

### 3. VORTEX (`task_vortex.gif`)
- **Objective**: Establish and sustain a self-centered orbital mill formation with high collective angular momentum around an unanchored virtual centroid.
- **Lesion Recovery**: Generates counter-rotational shear flows through non-linear angular momentum couplings ($119.3\%$ recovery).

### 4. PACKING (`task_packing.gif`)
- **Objective**: Self-assemble into a close-packed triangular lattice crystal structure with uniform nearest-neighbor coordination.
- **Lesion Recovery**: Dynamically adapts spatial cutoff distances to $4.6\,\text{m}$ to match crystal geometry, restoring hexatic orientational order.

### 5. CHAIN (`task_comm_relay.gif`)
- **Objective**: Form and maintain a multi-hop dynamic relay network between two arbitrarily moving ground endpoints under a strict local radio communication radius ($R = 15\,\text{m}$).
- **Lesion Recovery**: Reconstructs algebraic neighbor velocity consensus ($\mathbf{v}_i + \operatorname{mean}_j(\mathbf{v}_j - \mathbf{v}_i) = \operatorname{mean}_j \mathbf{v}_j$) with exact structural equivalence ($111.4\%$ recovery).

---

## 📢 Availability Note

> **Notice**: The complete source code implementation (`code/`), training pipelines, and the full manuscript (`paper/`) are currently under double-anonymous peer review. They will be fully open-sourced in this repository upon official publication.

---

## 📜 Citation

```bibtex
@article{wang2026pgse,
  title={Primitive-Growing Symbolic Evolution for Autonomous Swarm Controllers},
  author={Wang, Chen and collaborators},
  journal={IEEE Transactions on Artificial Intelligence},
  year={2026},
  note={Under Review}
}
```

---

## 📄 License

This repository and its visual media are licensed under the [MIT License](LICENSE).
