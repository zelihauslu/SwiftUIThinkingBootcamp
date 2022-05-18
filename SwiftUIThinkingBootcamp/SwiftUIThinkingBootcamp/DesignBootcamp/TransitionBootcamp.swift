//
//  TransitionBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 4.05.2022.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView : Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            VStack{
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
            }
           
            
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .fill(.red)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
//                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.opacity.animation(.linear))
                // .transition(AnyTransition.scale.animation(.linear))
                    .animation(.easeInOut, value: 1.0)
            }
            
        }
         .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
