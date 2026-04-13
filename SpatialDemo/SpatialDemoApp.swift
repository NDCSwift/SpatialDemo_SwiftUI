//
        //
    //  Project: SpatialDemo
    //  File: SpatialDemoApp.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI

// MARK: - visionOS App Entry Point
// On visionOS, the App protocol drives the Scene graph, just like iOS/macOS.
// However, visionOS introduces additional Scene types beyond WindowGroup:
//
//   WindowGroup       — a 2D window rendered in the shared space (used here)
//   ImmersiveSpace    — a full-passthrough or full-immersion AR/VR environment
//   VolumetricWindow  — a 3D bounding-box volume placed in the shared space
//
// You can declare multiple scenes; the system manages their lifecycle
// independently. Users can open, close, and resize windows freely.

@main
struct SpatialDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // MARK: - Window Style
        // .plain removes the default glass chrome border around the window,
        // giving full control over the window's visual appearance.
        // Common alternatives:
        //   .automatic    — system default chrome (glass border + shadow)
        //   .plain        — no chrome; your content defines the edges
        //   .volumetric   — enables a 3D volume instead of a flat 2D window
        .windowStyle(.plain)
    }
}
