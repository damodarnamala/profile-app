//
//  Errors.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import Foundation
enum Errors: Error {
    case fileNotFound
    var description: String {
        switch self {
        case .fileNotFound: "Unable to load file"
        }
    }
}
