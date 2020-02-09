//
//  ProgressView.swift
//  CustomProgressViewSwiftUI
//
//  Created by Nelson Gonzalez on 2/9/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ProgressView: View {
    @Binding var percentage: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            ZStack(alignment: .trailing) {
                Capsule().fill(Color.black.opacity(0.08)).frame(height: 20)
                Text(String(format: "%.0f", self.percentage * 100) + "%").font(.caption).foregroundColor(Color.gray.opacity(0.75)).padding(.trailing)
            }
            
            Capsule().fill(LinearGradient(gradient: Gradient(colors: [Color("Color"), Color("Color-1")]), startPoint: .leading, endPoint: .trailing)).frame(width: self.calculatePercentage(), height: 22)
        }.padding(18).background(Color.black.opacity(0.085)).cornerRadius(15)
    }
    
    func calculatePercentage() -> CGFloat {
        let width = UIScreen.main.bounds.width - 66
        return width * self.percentage
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(percentage: .constant(75))
    }
}
