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

// MARK: - visionOS Layout Notes
// NavigationSplitView is the preferred layout container on visionOS.
// It automatically adapts to the spatial window size and gives users
// a sidebar + detail split that feels native in a shared space.

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
                // MARK: - visionOS Grid Layout
                // LazyVGrid with .adaptive columns works well in visionOS windows
                // because window sizes are flexible — users can resize the volume
                // at runtime, so adaptive columns reflow content gracefully.
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))], spacing: 16) {
                    ForEach(items, id:\.self) {
                        item in
                        
                        GlassCard(title: item)
                    }
                }
                .padding()
            }
        }
        
        // MARK: - Ornament
        // Ornaments are a visionOS-exclusive UI concept: floating panels that
        // attach to a window edge but exist outside the window's bounds.
        // They don't occlude window content and maintain spatial depth separation.
        //
        // Anchor options:
        // .scene(.bottom)   — below the window (most common for playback controls)
        // .scene(.top)      — above the window (title bars, status indicators)
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
            // MARK: - Glass Background Effect
            // .glassBackgroundEffect() applies the visionOS frosted glass material.
            // It renders a specular, translucent surface that blends with the
            // physical environment behind the device. This is the canonical
            // visionOS background for windows, ornaments, and floating panels.
            // Do NOT simulate it with .ultraThinMaterial — they are different.
            .glassBackgroundEffect()
        }
    }
}

// MARK: - GlassCard
// Demonstrates the two core visionOS interactivity primitives on a card:
//   1. .glassBackgroundEffect() — spatial glass surface material
//   2. .hoverEffect()           — responds to eye gaze or pointer proximity
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
        
        // MARK: - Glass Background Effect
        // Gives the card the frosted glass look native to visionOS.
        // The material automatically responds to the real-world environment
        // lighting captured by Apple Vision Pro's cameras.
        // Apply this AFTER setting the frame so the glass fills the correct shape.
        .glassBackgroundEffect()
        
        // MARK: - Hover Effect
        // .hoverEffect() highlights the view when the user looks at it
        // (eye tracking) or moves a pointer (trackpad / hand pinch hover).
        // visionOS provides three built-in styles:
        //   .automatic   — system-chosen highlight (default, recommended)
        //   .highlight   — brightens the view
        //   .lift        — elevates the view with a subtle Z-depth raise
        // Apply AFTER .glassBackgroundEffect() so the highlight renders on top.
        .hoverEffect()
    }
}

#Preview {
    BrowseTab()
}
