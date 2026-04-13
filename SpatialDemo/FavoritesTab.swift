//
        //
    //  Project: SpatialDemo
    //  File: FavoritesTab.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI

// MARK: - visionOS List & NavigationStack Notes
// List on visionOS renders with the glass sidebar style by default.
// Each row automatically gets a hover highlight when the user looks at it
// (eye tracking) — no .hoverEffect() modifier needed on List rows.
//
// NavigationStack is the correct choice for single-column push navigation.
// Avoid NavigationView (deprecated) and boolean-driven navigation.

struct FavoritesTab: View {
    var body: some View {
        NavigationStack{
            List{
                // MARK: - Sections
                // Sections in visionOS List receive a glass-inset grouped
                // style that visually separates content areas within the
                // translucent sidebar, matching Apple HIG spatial guidelines.
                Section("Recent"){
                    Label("item 1", systemImage: "star.fill")
                    Label("item 2", systemImage: "star.fill")
                    Label("item 3", systemImage: "star.fill")
                }
                Section("All Time"){
                    Label("item 4", systemImage: "heart.fill")
                    Label("item 5", systemImage: "heart.fill")
                }
            }
            .navigationTitle("Favourites")
        }
    }
}

#Preview {
    FavoritesTab()
}
