//
//  creating_conbining_viewApp.swift
//  creating-conbining-view
//
//  Created by hiro on 2025/06/15.
//

import SwiftUI

@main
struct creating_conbining_viewApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
