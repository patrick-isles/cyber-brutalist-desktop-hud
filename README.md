# 🌑 Cyber-Brutalist Desktop HUD (`arasaka-bataille-noir`)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![Platform](https://img.shields.io/badge/Platform-GNOME%20%2F%20Wayland-green.svg)]()
[![Resolution](https://img.shields.io/badge/Resolution-Native%204K%20%283840x2160%29-red.svg)]()

> *"The accursed share: that which cannot be contained must be expended."*  
> — **Georges Bataille**, *La Part Maudite* (1949)

A native, zero-overhead **Cyber-Brutalist Desktop HUD & Dynamic Procedural Wallpaper Engine** designed for Linux (GNOME on Wayland). 

Synthesizes the corporate dystopian aesthetic of **Arasaka (Cyberpunk 2077)** with the philosophical excess of **Georges Bataille**, extracting real-time Linux kernel telemetry (`/sys` and `/proc`) directly onto your desktop surface.

---

## ⚡ Visual Composition

```text
┌────────────────────────────────────── 3840 x 2160 NATIVE 4K ──────────────────────────────────────┐
│                                                                                                    │
│  ╲  DEEP WINE GEOMETRY (#1C050A)           │                                                       │
│   ╲  • 2px Precision Scanlines             │      ┌─────────────────────────────────────────┐      │
│    ╲  • Faint Eclipse / Monolith Crest     │      │ ◈ ARASAKA // TELEMETRY HUD              │      │
│     ╲  • Precision Architectural Grid      │      │ ASUS ROG ZEPHYRUS G14 • REMBRANDT • NAVI│      │
│      ╲                                     │      ├─────────────────────────────────────────┤      │
│       ╲                                    │      │ SYSTEM IDENT:  pat@ROG-Zephyrus-G14     │      │
│        ╲                                   │      │ SESSION UPTIME: 2h 45m                  │      │
│         ╲                                  │      │ CPU STATUS:    Ryzen 9 6900HS [68°C]    │      │
│          ╲                                 │      │ dGPU STATUS:   Radeon RX 6700S [52°C]   │      │
│           ╲                                │      │ MEMORY POOL:   8920 / 14690 MiB (60%)   │      │
│            ╲                               │      ├─────────────────────────────────────────┤      │
│             ╲                              │      │ [██████████████████░░░░░░░░░░░] 60%     │      │
│              ╲   PITCH OBSIDIAN VOID       │      ├─────────────────────────────────────────┤      │
│               ╲  (#08090D)                 │      │ ▎ "The world of energy demands an       │      │
│                ╲                           │      │ ▎  excess—a glorious sacrifice of power │      │
│                 ╲                          │      │ ▎  without profit."                     │      │
│                  ╲                         │      │ ▎  — Georges Bataille                   │      │
│                   ╲                        │      └─────────────────────────────────────────┘      │
│                                                                                                    │
└────────────────────────────────────────────────────────────────────────────────────────────────────┘
```

---

## 🔬 Key Engineering Features

1. **100% Procedural 4K Vector Canvas**:
   * Zero low-resolution raster scaling or letterboxing. The entire wallpaper is procedurally drawn from mathematical coordinates in Python Pillow (`PIL`), rendering razor-sharp geometry on high-DPI displays.
2. **Direct Linux Kernel Telemetry**:
   * Direct virtual filesystem reads: CPU clocks from `cpufreq`, CPU thermals from `k10temp`, dGPU thermals from `amdgpu`, and memory buffers from `/proc/meminfo`.
3. **Dynamic Typography & Layout Engine**:
   * Uses `textwrap` with per-character bounding box limits (max 50 chars/line) to guarantee quotes never overflow card boundaries.
   * Renders quotes in an architecturally recessed container (`#12141C`) with an arterial crimson 3px vertical anchor line.
   * Outer card height dynamically recalculates to fit multiline aphorisms with exact 45px bottom padding.
4. **Zero-Lag Systemd Automation**:
   * Runs as a native `systemd` user timer (`desktop-hud.timer`) every 5 minutes.
   * Dispatches updates through your active Wayland D-Bus session (`/run/user/1000/bus`) with zero CPU overhead.

---

## 🛠️ Quick Installation

### 1. Clone & Install
```bash
git clone https://github.com/patrick-isles/cyber-brutalist-desktop-hud.git
cd cyber-brutalist-desktop-hud
chmod +x install.sh
./install.sh
```

### 2. Manual Run / Instant Refresh
```bash
update-desktop-hud
```

---

## 🔬 Technical Laboratory Report & Post-Mortem

For a rigorous, academic systems engineering retrospective covering:
* **Failure Mode & Effects Analysis (FMEA)** of initial spatial and functional defects
* **Mathematical analysis of typographic overflow** ($\Delta_{error} = +305\text{px}$ linear breach) and coordinate rectifications
* **Nyquist-Shannon sampling collapse** under raster upscaling vs procedural vector rasterization
* **IPC D-Bus session dispatching** under Mutter/Wayland

👉 Read the full peer-reviewed lab report: **[docs/DESIGN_PROCESS.md](docs/DESIGN_PROCESS.md)**

---

## 📜 License

MIT License © 2026 [Patrick Isles](https://github.com/patrick-isles).
