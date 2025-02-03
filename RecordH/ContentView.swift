//
//  ContentView.swift
//  RecordH
//
//  Created by liushiping on 2025/2/1.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var healthStore = HealthStore()
    @StateObject private var themeManager = ThemeManager()
    
    var body: some View {
        DashboardView(healthStore: healthStore)
            .preferredColorScheme(themeManager.colorScheme)
            .environmentObject(themeManager)
    }
}

#Preview {
    ContentView()
}
