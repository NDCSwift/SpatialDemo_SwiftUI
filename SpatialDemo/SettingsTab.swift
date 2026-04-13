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

struct SettingsTab: View {
    @State private var notificationsEnabled = true
    @State private var selectedTheme = "System"
    var body: some View {
        NavigationStack {
            Form {
                Section("General"){
                    Toggle("Notifications", isOn: $notificationsEnabled)
                    Picker("Theme", selection: $selectedTheme){
                        Text("System").tag("System")
                        Text("Light").tag("Light")
                        Text("Dark").tag("Dark")
                    }
                }
                Section("About"){
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
