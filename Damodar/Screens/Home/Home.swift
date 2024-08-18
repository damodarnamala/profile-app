//
//  ContentView.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import SwiftUI


struct Home {
    @MainActor func build(configuration: Home.Configuration) -> HomeView {
        HomeView(viewModel: .init())
    }
}


extension Home {
    struct Configuration {
        var resources = Resources()
        var strings = Strings()
        var images = Images()
        var router = Router()
        var useCase = UseCase()
        var size = SizeConstangs()
    }
}


extension Home.Configuration {
   
    struct Strings {
        
    }
    
    struct Images {
        var hederTransperent = "home-header-transparent"
        var person = "person-image"
    }
    
    struct Router {
        
    }
    
    struct Resources {
        let introJson = "intro.json"
    }
}


extension Home.Configuration {
    protocol IntroUseCase {
        func getIntro() throws -> Intro
    }
    
    struct UseCase: IntroUseCase {
        func getIntro() throws -> Intro {
            guard let intro: Intro = JSONHelper.decode("intro", fileType: "json") else {
                throw Errors.fileNotFound
            }
            return intro
        }
    }
    
}


