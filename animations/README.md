# PGSE: Swarm Trajectory Animations & Multi-Scale Evaluation Suite

This directory contains high-resolution animated demonstrations and vector visual artifacts generated from deterministic rollouts of discovered symbolic controllers under full 13-state quadrotor physical dynamics.

---

## 📂 Directory Structure & File Manifest

```text
animations/
├── all_tasks_animation.gif           # Nominal 1×5 synchronized panorama (N=6~12)
├── task_queue.gif                    # (a) QUEUE nominal close-up (N=6)
├── task_entrap.gif                   # (b) ENTRAP nominal close-up (N=6)
├── task_vortex.gif                   # (c) VORTEX nominal close-up (N=12)
├── task_packing.gif                  # (d) PACKING nominal close-up (N=12)
├── task_chain.gif                    # (e) CHAIN nominal close-up (N=6)
├── task_comm_relay.gif               # (e) CHAIN legacy alias (N=6)
├── fig_task_trajectories.png         # High-resolution (300 DPI) publication trajectory figure
├── README.md                         # This file
├── scale15/                          # Scenario 2: Scale Transfer (N=15)
│   ├── all_tasks_n15_animation.gif   # 15-UAV 1×5 synchronized macro panorama
│   ├── task_queue_n15.gif            # 15-UAV QUEUE corridor cruising
│   ├── task_entrap_n15.gif           # 15-UAV ENTRAP R=7.5m encirclement
│   ├── task_vortex_n15.gif           # 15-UAV VORTEX dipole swirling orbits
│   ├── task_packing_n15.gif          # 15-UAV PACKING 5×3 hexagonal lattice
│   └── task_chain_n15.gif            # 15-UAV CHAIN topological relay corridor
└── scale25/                          # Scenario 3: Ultra-Dense Scale Transfer (N=25)
    ├── all_tasks_n25_animation.gif   # 25-UAV 1×5 synchronized macro panorama
    ├── task_queue_n25.gif            # 25-UAV QUEUE dense line formation
    ├── task_entrap_n25.gif           # 25-UAV ENTRAP R=10m enclosure ring
    ├── task_vortex_n25.gif           # 25-UAV VORTEX high-momentum counter-rotating mill
    ├── task_packing_n25.gif          # 25-UAV PACKING 5×5 dense crystal lattice
    └── task_chain_n25.gif            # 25-UAV CHAIN 25-node topological relay corridor
```

---

## 🎬 Detailed Specifications

### 1. Macro Panoramas (Synchronized 1×5 Multi-Task Trajectories)
- **`all_tasks_animation.gif`** (1104 × 252 px, 65 frames, ~1.18 MB):
  Synchronized execution of nominal swarm controllers discovering collective behavior across all 5 tasks ($N=6\sim 12$).
- **`scale15/all_tasks_n15_animation.gif`** (1104 × 252 px, 65 frames, ~3.80 MB):
  Synchronized zero-shot scale transfer to $N=15$ quadrotors across all 5 benchmark scenarios.
- **`scale25/all_tasks_n25_animation.gif`** (1104 × 252 px, 65 frames, ~4.72 MB):
  Synchronized zero-shot scale transfer to $N=25$ quadrotors evaluating dense collective coordination and zero collisions.

### 2. Canonical Benchmark Tasks (Individual Close-Ups)
- **`task_queue*.gif`**:
  Autonomous queue formation with smooth fading ribbon trajectories and quadrotor orientation glyphs ($N=6, 15, 25$).
- **`task_entrap*.gif`**:
  Moving target pursuit and standoff encirclement with protective radial potential barriers ($N=6, 15, 25$).
- **`task_vortex*.gif`**:
  Self-organizing counter-rotating dual-lobe orbital mill formation ($N=12, 15, 25$).
- **`task_packing*.gif`**:
  Autonomous crystallization into hexagonal/triangular lattice structure with dynamic Delaunay coordination bonds ($N=12, 15, 25$).
- **`task_chain*.gif`**:
  Dynamic multi-hop communication relay linking moving terminals A and B via topological predecessor-successor coupling ($N=6, 15, 25$).

### 3. Static Composite Publication Figure
- **`fig_task_trajectories.png`**:
  High-resolution (300 DPI) publication-quality trajectory plot matching Figure 1 in the IEEE TAI manuscript.
