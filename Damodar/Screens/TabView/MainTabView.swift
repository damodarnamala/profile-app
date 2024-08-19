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
    @EnvironmentObject var store: Store
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        TabView {
            Home.build()
                .environmentObject(store)
                .tabItem {
                    Image(systemName: viewModel.configuration.images.homeTabItemImage)
                    Text(viewModel.configuration.strings.homeTabItemTitle)
                }
            
            Experience.build()
                .environmentObject(store)
                .tabItem {
                    Image(systemName:viewModel.configuration.images.experienceTabItemImage)
                    Text(viewModel.configuration.strings.experienceTabItemTitle)
                }
            
            Education.build()
                .environmentObject(store)
                .tabItem {
                    Image(systemName:viewModel.configuration.images.educationTabItemImage)
                    Text(viewModel.configuration.strings.educationTabItemTitle)
                }
        }
    }
}
