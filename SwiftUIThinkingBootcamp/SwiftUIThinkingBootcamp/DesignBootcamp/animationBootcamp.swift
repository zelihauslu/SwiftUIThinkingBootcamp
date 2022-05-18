//
//  animationBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 3.05.2022.
//

import SwiftUI

struct animationBootcamp: View {
    
    @State var isAnimated: Bool = false

    
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea(.all)
            
            VStack{
                Spacer()
                Button("Button"){
                    withAnimation(
                    ) {
                         isAnimated.toggle()

                   }
                }
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.purple)
                .cornerRadius(15)
                RoundedRectangle(cornerRadius: isAnimated ? 50 : 15)
                    .fill(isAnimated ? .green : .red)
                    .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                    .rotationEffect(Angle(radians: isAnimated ? 360 : 0))
                    .offset(y: isAnimated ? 100 : 0)
                    .animation(Animation
                        .default
                        .repeatForever(autoreverses: true))
                Spacer()

            }
        }
    }
}

struct animationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        animationBootcamp()
    }
}
