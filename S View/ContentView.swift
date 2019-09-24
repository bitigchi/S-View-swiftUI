//
//  ContentView.swift
//  S View
//
//  Created by Emir SARI on 24.09.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataSource = DataSource()
    
    var body: some View {
        NavigationView {
            List(dataSource.photos, id: \.self) { photo in
                NavigationLink(destination: DetailView(selectedImage: photo)) {
                    Text(photo)
                }
            }.navigationBarTitle("S View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
