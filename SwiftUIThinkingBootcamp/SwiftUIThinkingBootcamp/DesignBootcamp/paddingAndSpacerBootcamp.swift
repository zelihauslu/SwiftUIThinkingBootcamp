//
//  paddingAndSpacerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 30.04.2022.
//

import SwiftUI

struct paddingAndSpacerBootcamp: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("Hello World")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Text("this is the description this is the description this is the description this is the description this is the description this is the description this is the description this is the description this is the description this is the description this is the description this is the description this is the description ")
                
                
                
            }
            .padding()
            .background(.orange)
            .padding()
            .background(.yellow)
            
            
            VStack(alignment: .leading){
                Text("Hello, World!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.bottom, 10)
                
                Text("This is second description This is second description This is second description This is second description This is second description  ")
            }
            .padding()
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
            )
            .padding(.horizontal, 10)
            
            Spacer()
                .frame(width: 10)
                .background(.blue)
            
        }
       
        
        
        
    }
}

struct paddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        paddingAndSpacerBootcamp()
    }
}
