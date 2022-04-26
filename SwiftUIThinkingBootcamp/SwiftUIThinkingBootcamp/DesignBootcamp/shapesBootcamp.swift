//
//  shapesBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 25.04.2022.
//

import SwiftUI

struct shapesBootcamp: View {
    var body: some View {
        VStack{
            Circle()
                // .fill(.yellow)
                // .foregroundColor(.yellow)
                // .stroke(.yellow)
                //.stroke(.blue, lineWidth: 30)
                //.stroke(.orange, style: StrokeStyle(lineWidth: 80, lineCap: .butt, dash: [10]))
                .trim(from: 0.2, to: 1.0)
                .stroke(.purple, lineWidth: 10)
            
            
            Ellipse()
                .frame(width: 200, height: 200)
                .foregroundColor(.brown)
            
            Capsule(style: .circular)
                .frame(width: 100, height: 200)
                .foregroundColor(.cyan)
            
            Rectangle()
                .trim(from: 0, to: 0.5)
                .frame(width: 100, height: 100)
                .foregroundColor(.accentColor)
        }
        
    }
}

struct shapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        shapesBootcamp()
    }
}
