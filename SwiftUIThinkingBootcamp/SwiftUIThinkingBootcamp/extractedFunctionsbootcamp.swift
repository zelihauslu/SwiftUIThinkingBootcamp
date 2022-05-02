//
//  extractedFunctionsbootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 2.05.2022.
//

import SwiftUI

struct extractedFunctionsbootcamp: View {
    
    @State var background : Color = Color.orange
    
    var body: some View {
        ZStack{
            background
                .ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.title)
                .fontWeight(.bold)
            
            Button(action: {
               buttonPressed()
            }, label: {
                Text("Press me")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(20)
            })
        }
    }
    
    func buttonPressed() {
        background = .brown
    }
}

struct extractedFunctionsbootcamp_Previews: PreviewProvider {
    static var previews: some View {
        extractedFunctionsbootcamp()
    }
}
