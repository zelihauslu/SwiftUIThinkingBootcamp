//
//  ternaryBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 3.05.2022.
//

import SwiftUI

struct ternaryBootcamp: View {
    
    @State var isStartingState : Bool = false
    
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea(.all)
            
            // TERNARY OPERATORS ----> ÜÇLÜ OPERATÖRLER
            
            
            VStack{
                Button("Button: \(isStartingState.description)") {
                    isStartingState.toggle()
                }
                
                Text(isStartingState ? "starting state" : "ending state")
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(isStartingState ? Color.blue : Color.red)
                    .foregroundColor(.white)
//                    .frame(width: 200, height: 100)
            .frame(
                width: isStartingState ? 200 : 50,
                height: isStartingState ? 100 : 25)
                
                Spacer()
            }
        }
    }
}

struct ternaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ternaryBootcamp()
    }
}
