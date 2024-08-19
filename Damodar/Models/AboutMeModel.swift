//
//  AboutMeModel.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//
import Foundation

// MARK: - AboutMe
struct AboutMeModel: Decodable {
    let primaryInfo: PrimaryInfoModel
    let contact: ContactModel
    let education: EducationModel
    let certifications, experience: CertificationsModel
}

// MARK: - Certifications
struct CertificationsModel: Decodable {
    let title: String
    let snapshot: [SnapshotModel]
    let details: [String]
}

// MARK: - Snapshot
struct SnapshotModel: Decodable, Hashable {
    let title, details: String
}

// MARK: - Contact
struct ContactModel: Decodable {
    let email, mobile: String
}

// MARK: - Education
struct EducationModel: Decodable {
    let title: String
    let details: [String]
}

// MARK: - PrimaryInfo
struct PrimaryInfoModel: Decodable {
    let name, designation, companyName, location: String
    let country, aboutMe, quote: String
}
