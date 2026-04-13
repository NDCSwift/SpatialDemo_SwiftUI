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

struct ContentView: View {
    var body: some View {
        TabView{
            BrowseTab()
                .tabItem {
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

#Preview(windowStyle: .automatic) {
    ContentView()
}
