//
//  DetailView.swift
//  S View
//
//  Created by Emir SARI on 24.09.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @State private var hidesNavigationBar = false
    var selectedImage: String
    
    var body: some View {
        let img = UIImage(named: selectedImage)!
        return Image(uiImage: img)
            .resizable()
            .aspectRatio(1024/768, contentMode: .fit)
            .navigationBarTitle(Text(selectedImage), displayMode: .inline)
            .navigationBarHidden(hidesNavigationBar)
            .animation(.default)
            .onTapGesture {
                self.hidesNavigationBar.toggle()
        }
    }
}
