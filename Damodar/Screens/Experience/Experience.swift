//
//  Experience.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import Foundation
import SwiftUI

struct Experience {
    @EnvironmentObject var store: Store
    @MainActor static func build() -> ExperienceView {
        return ExperienceView(viewModel: .init())
    }
}

