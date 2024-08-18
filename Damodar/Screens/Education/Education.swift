//
//  Education.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import Foundation

struct Education {
    @MainActor func build() -> EducationView {
        EducationView(viewModel: .init())
    }
}
