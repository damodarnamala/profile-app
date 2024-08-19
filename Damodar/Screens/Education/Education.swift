//
//  Education.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import Foundation
import SwiftUI

struct Education {
    @EnvironmentObject var store: Store
    @MainActor static func build() -> some View {
        return EducationView(viewModel: .init())
    }
}
