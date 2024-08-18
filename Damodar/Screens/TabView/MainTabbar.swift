//
//  TabView.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import Foundation

struct MainTabView {
    var configuration = MainTabView.Configuration()
    @MainActor func build() -> MainView {
        MainView(viewModel: .init(configuration: .init()))
    }
}

extension MainTabView {
    struct Configuration {
        var strings = Strings()
        var images = Images()
    }
}


extension MainTabView.Configuration {
    
    struct Strings {
        var homeTabItemTitle = "Home"
        var experienceTabItemTitle = "Experience"
        var educationTabItemTitle = "Education"
        var projectsTabItemTitle = "Projects"
    }
    
    struct Images {
        var homeTabItemImage = "house"
        var experienceTabItemImage = "briefcase.fill"
        var educationTabItemImage = "graduationcap"
        var projectsTabItemImage = "apps.iphone"
    }
}
