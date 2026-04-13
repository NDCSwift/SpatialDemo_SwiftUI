//
        //
    //  Project: SpatialDemo
    //  File: SettingsTab.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI

// MARK: - visionOS Form Notes
// Form on visionOS uses the .grouped style by default and renders each
// section with a glass inset card, consistent with the spatial design language.
// Controls like Toggle and Picker automatically adopt spatial-appropriate
// sizing and touch/eye-gaze targets — Apple recommends a minimum 44pt
// hit target, which these controls meet natively.

struct SettingsTab: View {
    // MARK: - State
    // @State is view-local; fine here since these are simple toggle/picker
    // values. For settings that persist across launches, prefer @AppStorage.
    @State private var notificationsEnabled = true
    @State private var selectedTheme = "System"
    var body: some View {
        NavigationStack {
            Form {
                Section("General"){
                    // MARK: - Toggle
                    // On visionOS, Toggle renders with a larger thumb and track
                    // to support indirect input (eye gaze + pinch gesture).
                    // The system handles all interaction; no extra configuration needed.
                    Toggle("Notifications", isOn: $notificationsEnabled)

                    // MARK: - Picker
                    // Picker on visionOS defaults to .menu style inside a Form,
                    // opening a floating popover anchored to the row.
                    // The popover automatically applies .glassBackgroundEffect()
                    // and positions itself at comfortable spatial depth.
                    Picker("Theme", selection: $selectedTheme){
                        Text("System").tag("System")
                        Text("Light").tag("Light")
                        Text("Dark").tag("Dark")
                    }
                }
                Section("About"){
                    // LabeledContent is the preferred way to display key-value
                    // info rows — it respects Dynamic Type and right-to-left layouts.
                    LabeledContent("Version", value: "1.0.0")
                    LabeledContent("Build", value: "42")
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsTab()
}
