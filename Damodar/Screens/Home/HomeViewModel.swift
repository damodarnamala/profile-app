//
//  HomeViewModel.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import Foundation
import Combine

@MainActor
class HomeViewModel: ObservableObject {
    private (set) var introSubject = PassthroughSubject<Intro?, Never>()
    private var configuration = Home.Configuration()
    func getIntro() {
        guard let intro = try? self.configuration.useCase.getIntro()
        else {
            return
        }
        self.introSubject.send(intro)
    }
}
