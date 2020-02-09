//
//  ContentView.swift
//  CustomProgressViewSwiftUI
//
//  Created by Nelson Gonzalez on 2/9/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var percentage: CGFloat = 003
    
    var body: some View {
        VStack {
            ProgressView(percentage: self.$percentage)
        }.padding().onTapGesture {
            self.percentage = 0.75
        }.animation(.spring())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
