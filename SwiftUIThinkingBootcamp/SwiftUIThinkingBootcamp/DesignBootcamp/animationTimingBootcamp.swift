//
//  animationTimingBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 4.05.2022.
//

import SwiftUI

struct animationTimingBootcamp: View {
    
    @State var isAnimating : Bool = true

    
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea(.all)
            
            VStack{
                Button("Button"){
                    isAnimating.toggle()
                }
                RoundedRectangle(cornerRadius: 20)
                    .fill(.orange)
                    .frame(width: isAnimating ? 350 : 100,
                           height: isAnimating ? 100 : 50,
                           alignment: .center)
                    .animation(.spring(response: 1.0,
                                       dampingFraction: 0.2,
                                       blendDuration: 1.0))
                //animation(.spring) is really useful and natural
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(.orange)
                    .frame(width: isAnimating ? 350 : 100,
                           height: isAnimating ? 100 : 50,
                           alignment: .center)
                    .animation(.easeIn)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(.orange)
                    .frame(width: isAnimating ? 350 : 100,
                           height: isAnimating ? 100 : 50,
                           alignment: .center)
                    .animation(.easeInOut)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(.orange)
                    .frame(width: isAnimating ? 350 : 100,
                           height: isAnimating ? 100 : 50,
                           alignment: .center)
                    .animation(.easeIn(duration: 3.0))
                    
                RoundedRectangle(cornerRadius: 20)
                    .fill(.orange)
                    .frame(width: isAnimating ? 350 : 100,
                           height: isAnimating ? 100 : 50,
                           alignment: .center)
                    .animation(.spring(response: 1.0,
                                       dampingFraction: 0.2,
                                       blendDuration: 1.0))
            }
        }
    }
}

struct animationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        animationTimingBootcamp()
    }
}
