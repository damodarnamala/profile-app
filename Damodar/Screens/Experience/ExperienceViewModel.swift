//
//  ExperienceViewModel.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import Foundation
import Combine

@MainActor
class ExperienceViewModel: ObservableObject {
    private (set) var introSubject = PassthroughSubject<Intro?, Never>()
    private var usecase: Home.Configuration.UseCase
    
    init(usecase: Home.Configuration.UseCase) {
        self.usecase = usecase
    }
    
    func getIntro() {
        guard let intro = try? usecase.getIntro()
        else {return}
        self.introSubject.send(intro)
    }
}
