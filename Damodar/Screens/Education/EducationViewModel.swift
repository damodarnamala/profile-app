//
//  EducationViewModel.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import Foundation
import Combine

@MainActor
final class EducationViewModel: ObservableObject {
    private var useCase = Home.Configuration.UseCase()
    private (set) var introSubject = PassthroughSubject<Intro?, Never>()
   
    func getIntro() {
        guard let intro = try? useCase.getIntro() else {return}
        self.introSubject.send(intro)
    }
}
