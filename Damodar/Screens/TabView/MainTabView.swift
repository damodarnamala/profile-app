//
//  TabbarView.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import SwiftUI

@MainActor
struct MainView: View {
    var viewModel: MainViewModel
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        TabView {
            Home().build(configuration: .init())
                .tabItem {
                    Image(systemName: viewModel.configuration.images.homeTabItemImage)
                    Text(viewModel.configuration.strings.homeTabItemTitle)
                }
            
            Experience().build()
                .tabItem {
                    Image(systemName:viewModel.configuration.images.experienceTabItemImage)
                    Text(viewModel.configuration.strings.experienceTabItemTitle)
                }
            
            Education().build()
                .tabItem {
                    Image(systemName:viewModel.configuration.images.educationTabItemImage)
                    Text(viewModel.configuration.strings.educationTabItemTitle)
                }
        }
    }
}
