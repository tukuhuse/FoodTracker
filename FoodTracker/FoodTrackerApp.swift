//
//  FoodTrackerApp.swift
//  FoodTracker
//
//  Created by 高橋優人 on 2020/12/30.
//

import SwiftUI

@main
struct FoodTrackerApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
