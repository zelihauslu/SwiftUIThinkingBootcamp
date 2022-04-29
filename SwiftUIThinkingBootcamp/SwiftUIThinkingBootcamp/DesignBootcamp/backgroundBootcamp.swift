//
//  backgroundBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 29.04.2022.
//

import SwiftUI

struct backgroundBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .foregroundColor(.white)
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.pink]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100)
//                        )
//            .background(
//            Circle()
//                .fill(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.pink]), startPoint: .trailing, endPoint: .leading))
////                .fill(.purple)
//                .frame(width: 150, height: 150)
//            )
        
        
        
        
//            Circle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//                .overlay(
//                Text("Click Me")
//                    .font(.headline)
//                    .fontWeight(.bold)
//                    .foregroundColor(.white)
//                )
//                .background(
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 110, height: 110)
//                )
//
            
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.purple)
            .background(
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient.init(colors: [Color.purple, Color.white]), startPoint: .bottomLeading, endPoint: .topTrailing)
            )
                .frame(width: 100, height: 100)
                .shadow(color: .purple, radius: 8, x: 0, y: 5)
                .overlay(
                    Circle()
                        .fill(.blue)
                        .frame(width: 40, height: 50)
                        .overlay(
                        Text("5")
                            .foregroundColor(.white)
                            .font(.headline)
                        
                        )
                        .shadow(color: .blue, radius: 8, x: 3, y: 2)
                    , alignment: .bottomTrailing
                )
        )
    }
}

struct backgroundBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        backgroundBootcamp()
    }
}
