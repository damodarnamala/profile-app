//
//  ColorSystemEnvironment.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import Foundation
import SwiftUI

@propertyWrapper
struct ColorSystemEnvironment {
    @Environment(\.colorScheme) var colorScheme

    var wrappedValue: Color {
        colorScheme == .dark ? .dark : .light
    }
}
