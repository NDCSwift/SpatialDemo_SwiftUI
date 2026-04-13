//
        //
    //  Project: SpatialDemo
    //  File: BrowseTab.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI

struct BrowseTab: View {
    let items = (1...12).map { "item\($0)" }
    var body: some View {
        NavigationSplitView {
            List(items, id: \.self) {
                item in
                NavigationLink(item, value:item)
            }
            .navigationTitle("Browse")
            
        } detail: {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))], spacing: 16) {
                    ForEach(items, id:\.self) {
                        item in
                        
                        GlassCard(title: item)
                    }
                }
                .padding()
            }
        }
        
        // MARK: - Ornament anchor options
        // .scene(.bottom)   — below the window (most common for controls)
        // .scene(.top)      — above the window (title bars, status)
        // .scene(.leading)  — left side (TabView uses this automatically)
        // .scene(.trailing) — right side (contextual actions)
        .ornament(visibility: .visible, attachmentAnchor: .scene(.bottom), contentAlignment: .center) {
            HStack {
                Button {
                    //Real app logic
                } label: {
                    Image(systemName: "backward.fill")
                        .font(.title2)
                }
                Button {
                    //Real app logic
                } label: {
                    Image(systemName: "play.fill")
                        .font(.title2)
                }
                Button {
                    //Real app logic
                } label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                }
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .glassBackgroundEffect()
        }
    }
}

struct GlassCard: View {
    let title: String
    var body: some View {
        VStack{
            Image(systemName: "photo")
                .font(.system(size: 40))
                .foregroundStyle(.secondary)
            
            Text(title)
                .font(.headline)
        }
        .frame(width: 200, height: 160)
        .padding()
        
        .glassBackgroundEffect()
        .hoverEffect()
    }
}

#Preview {
    BrowseTab()
}
