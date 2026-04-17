# 🥽 SpatialDemo SwiftUI
A visionOS starter project demonstrating SwiftUI tab navigation and RealityKit integration on Apple Vision Pro.

---

## 🤔 What this is
SpatialDemo is a visionOS app built with SwiftUI that showcases a tabbed navigation structure with Browse, Favorites, and Settings views. It uses a local `RealityKitContent` Swift Package to manage 3D assets and USDZ scenes. It's a clean starting point for building spatial experiences on Apple Vision Pro.

## ✅ Why you'd use it
- **Tab-based navigation** — demonstrates `TabView` in a visionOS context with multiple destination views
- **RealityKit package** — shows how to structure a local Swift package for managing 3D `.rkassets` and USD scenes
- **SwiftUI-first** — no UIKit bridging; built entirely with Apple's recommended patterns for visionOS

Part 2 with Spatial Depth & Multiple windows can be found here [PART 2 REPO](https://github.com/NDCSwift/visionos-solar-system).

## 📺 Watch on YouTube
[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/ggm_B1CCz8k)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@NoahDoesCoding97).


---

## 🚀 Getting Started

### 1. Clone the repo
```bash
git clone https://github.com/NDCSwift/SpatialDemo_SwiftUI.git
cd SpatialDemo_SwiftUI
```

### 2. Open in Xcode
```bash
open SpatialDemo.xcodeproj
```
> Requires **Xcode 15.2+** with the visionOS SDK installed. If prompted, let Xcode resolve the `RealityKitContent` local package automatically.

### 3. Set your Team
In Xcode, select the `SpatialDemo` target → **Signing & Capabilities** → set your Apple Developer **Team**.

### 4. Set your Bundle ID
Change the Bundle Identifier from `com.example.SpatialDemo` to something unique to your account (e.g. `com.yourname.SpatialDemo`).

### 5. Run
Select the **Apple Vision Pro Simulator** (or a physical device) from the scheme menu and hit **Run** (`⌘R`).

---

## 🛠️ Notes
- The `Packages/RealityKitContent` directory is a **local Swift Package** — Xcode resolves it automatically; no `swift package resolve` needed.
- 3D assets live in `Packages/RealityKitContent/Sources/RealityKitContent/RealityKitContent.rkassets/`. Edit them with **Reality Composer Pro** (included with Xcode).
- To open Reality Composer Pro: in Xcode go to **Xcode → Open Developer Tool → Reality Composer Pro**.

## 📦 Requirements
| Requirement | Version |
|---|---|
| Xcode | 15.2+ |
| visionOS SDK | 1.0+ |
| Swift | 5.9+ |
| Apple Vision Pro Simulator | included with Xcode |

> A physical Apple Vision Pro is **not required** — the simulator works for all features in this project.

---

📺 [Watch the guide on YouTube](https://youtube.com/watch?v=PLACEHOLDER)
