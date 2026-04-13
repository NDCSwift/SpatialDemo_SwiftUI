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

struct FavoritesTab: View {
    var body: some View {
        NavigationStack{
            List{
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
