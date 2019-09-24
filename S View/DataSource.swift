//
//  DataSource.swift
//  S View
//
//  Created by Emir SARI on 24.09.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import SwiftUI
import Combine

class DataSource: ObservableObject {
    @Published var photos = [String]()
    
    init() {
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                photos.append(item)
            }
        }
    }
}
