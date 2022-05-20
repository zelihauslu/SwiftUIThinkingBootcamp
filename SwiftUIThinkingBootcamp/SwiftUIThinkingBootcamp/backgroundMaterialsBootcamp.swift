//
//  backgroundMaterialsBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 20.05.2022.
//

import SwiftUI

struct backgroundMaterialsBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
                
                
                
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
//            .background(Color.black.opacity(0.5))
            .background(.regularMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
        Image("background")
        )
    }
}

struct backgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        backgroundMaterialsBootcamp()
    }
}
