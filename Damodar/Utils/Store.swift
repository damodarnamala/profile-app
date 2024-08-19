//
//  DataStore.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import Foundation

final class Store: ObservableObject {
    private var model: AboutMeModel? = nil
    static let shared = Store()
   
    func getInfo() -> AboutMeModel? {
        return model
    }
    
    func create() {
        if let model: AboutMeModel = JSONHelper.decode("intro", fileType: "json") {
            self.model = model
        }
    }
}
