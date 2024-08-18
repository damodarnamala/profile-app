//
//  DamodarApp.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import SwiftUI

@main
struct DamodarApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(viewModel: .init(configuration: .init()))
        }
    }
}
