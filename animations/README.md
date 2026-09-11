# PGSE: Swarm Trajectory Animations & Visualizations

This directory contains high-resolution animated demonstrations generated from deterministic rollouts of discovered symbolic controllers.

---

## 🎬 File Manifest

### 1. Multi-Task Overview
- **`all_tasks_animation.gif`** (1104 × 252 px, 65 frames, ~1.17 MB):
  Synchronized multi-panel presentation of all 5 benchmark swarm tasks operating under learned typed symbolic controllers:
  - `(a) QUEUE`: Autonomous in-trail line formation and smooth cruising.
  - `(b) ENTRAP`: Circular encirclement of an agile escaping target.
  - `(c) VORTEX`: Dual counter-rotating orbital milling with high angular momentum.
  - `(d) PACKING`: Dense hexagonal lattice self-assembly with dynamic neighbor bond visualization.
  - `(e) COMM_RELAY`: Dynamic wireless relay placement maintaining connectivity between maneuvering endpoints.

### 2. Canonical Benchmark Tasks (Individual Close-Ups)
- **`task_queue.gif`** (520 × 520 px, 75 frames, ~391 KB):
  6-UAV autonomous queue formation with smooth fading ribbon trajectories and quadrotor orientation glyphs.
- **`task_entrap.gif`** (520 × 520 px, 75 frames, ~558 KB):
  6-UAV target entrapment and pursuit.
- **`task_vortex.gif`** (520 × 520 px, 75 frames, ~1.28 MB):
  12-UAV counter-rotating orbital mill formation.
- **`task_packing.gif`** (520 × 520 px, 75 frames, ~1.01 MB):
  12-UAV self-assembly into a regular triangular lattice with Delaunay neighbor links.
- **`task_comm_relay.gif`** (520 × 520 px, 75 frames, ~703 KB):
  6-UAV dynamic multi-hop communication relay between moving terminal nodes.

### 3. Static Composite Vector Figure
- **`fig_task_trajectories.png`**:
  High-resolution (300 DPI) publication-quality trajectory plot matching Figure 1 in the IEEE TAI manuscript.
