//
//  JSONHelper.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import Foundation

class JSONHelper {
    static func decode<T: Decodable>(_ fileName: String, fileType: String = "json") -> T? {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileType) else {
            print("File not found: \(fileName).\(fileType)")
            return nil
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let decodedData = try decoder.decode(T.self, from: data)
            return decodedData
        } catch {
            print("Error decoding \(fileName).\(fileType): \(error)")
            return nil
        }
    }
}
