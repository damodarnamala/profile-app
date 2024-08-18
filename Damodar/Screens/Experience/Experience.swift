//
//  Experience.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import Foundation
struct Experience {
    @MainActor func build() -> ExperienceView {
        ExperienceView(viewModel: .init(usecase: .init()))
    }
}

