//
//  colorBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 26.04.2022.
//

import SwiftUI

struct colorBootcamp: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 30)
//                .foregroundColor(Color(UIColor.secondarySystemBackground))
                .foregroundColor(Color("CustomColor").opacity(0.7))
                .frame(width: 300, height: 200)
//                .shadow( radius: 10)
                .shadow(color: .pink, radius: 10, x: 0.5, y: 10)
            // x: -20
            
        }
        
        
//            .fill(Color(Color Literal))
//            Color(#colorLiteral(red: 0.4352941176, green: 0.5607843137, blue: 0.9176470588, alpha: 1))
        
//            .fill(
//            Color(colorInvert()
//            )
        // color primary olduğunda temaya göre siyah/beyaz renk değeri alıyor
        //            .foregroundColor(.green)

    }
}

struct colorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        colorBootcamp()
            .preferredColorScheme(.light)
    }
}
