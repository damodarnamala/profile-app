//
//  ContentView.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import SwiftUI


struct Home {
    @EnvironmentObject var store: Store
    @MainActor static func build() -> some View {
        return HomeView(viewModel: .init())
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
        var linkedInUrl = "https://www.linkedin.com/in/damodarnamala/"
    }
    
    struct Images {
        var hederTransperent = "home-header-transparent"
        var person = "person-image"
        var qrCodeLinkedin = "qr-linkedin"
    }
    
    struct Router {
        
    }
    
    struct Resources {
        let introJson = "intro.json"
    }
}


extension Home.Configuration {
    protocol IntroUseCase {
        func getIntro() throws -> AboutMeModel
    }
    
    struct UseCase: IntroUseCase {
        func getIntro() throws -> AboutMeModel {
            guard let intro: AboutMeModel = JSONHelper.decode("intro", fileType: "json") else {
                throw Errors.fileNotFound
            }
            return intro
        }
    }
}


