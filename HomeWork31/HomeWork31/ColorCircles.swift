//
//  ColorCircles.swift
//  HomeWork31
//
//  Created by Дарья Дубровская on 31.03.22.
//

import SwiftUI

struct ColorCircles: View {
    
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .frame(width: 150, height: 150)
            
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircles(color: .orange)
    }
}
