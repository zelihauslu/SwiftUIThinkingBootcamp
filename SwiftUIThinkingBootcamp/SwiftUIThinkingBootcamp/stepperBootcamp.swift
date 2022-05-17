//
//  stepperBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 16.05.2022.
//

import SwiftUI

struct stepperBootcamp: View {
    
    @State var widthIncrement : CGFloat = 0
    @State var stepperValue: Int = 10

    
    var body: some View {
        VStack{
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper2"){
                incrementWidth(amount: 100)
            } onDecrement:{
                incrementWidth(amount: -100)
            }
        }
    }
    func incrementWidth(amount: CGFloat){
        withAnimation(.easeOut){
            widthIncrement += amount
        }
    }
}

struct stepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        stepperBootcamp()
    }
}
