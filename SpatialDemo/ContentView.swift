//
        //
    //  Project: SpatialDemo
    //  File: ContentView.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI
import RealityKit
import RealityKitContent

// MARK: - visionOS TabView Behaviour
// On visionOS, TabView renders its tab bar as a sidebar ornament on the
// leading edge of the window — NOT as a bottom bar like iOS.
// This is automatic; no extra configuration is needed.
// The sidebar floats outside the window bounds at spatial depth,
// keeping it accessible without occluding content.

struct ContentView: View {
    var body: some View {
        TabView{
            BrowseTab()
                .tabItem {
                    // SF Symbols render at the correct scale for the visionOS
                    // sidebar tab bar automatically — no size overrides needed.
                    Label("Browse", systemImage: "square.grid.2x2")
                }
            FavoritesTab()
                .tabItem {
                    Label("Favourites", systemImage: "heart.fill")
                }
            SettingsTab()
                .tabItem { Label ("Settings", systemImage: "gearshape.fill")}
        }
    }
}

// MARK: - Preview Window Style
// #Preview(windowStyle:) lets you specify the visionOS window style used
// in the Xcode canvas preview. Options mirror the App-level .windowStyle():
//   .automatic  — default glass-bordered window
//   .plain      — borderless window
//   .volumetric — 3D volume (requires RealityKit content)
#Preview(windowStyle: .automatic) {
    ContentView()
}
