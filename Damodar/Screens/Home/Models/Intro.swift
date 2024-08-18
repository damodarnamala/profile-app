//
//  Intro.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import Foundation

struct Intro: Decodable {
    let name, designation, companyName, location: String
    let country, aboutMe: String
    let email, mobile: String
    let education: Info, experience: Info
}

struct Info: Decodable {
    var title: String
    var all: [String]
}
