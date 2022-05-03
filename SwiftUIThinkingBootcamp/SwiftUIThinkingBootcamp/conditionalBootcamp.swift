//
//  conditionalBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 3.05.2022.
//

import SwiftUI

struct conditionalBootcamp: View {
    
    @State var changeCondition : Bool = false
    @State var isLoading : Bool = false
    var body: some View {
        ZStack{
            Color.mint
                .ignoresSafeArea(.all)
            
//            VStack{
//                Button("Change Condition: \(changeCondition.description)") {
//                    changeCondition.toggle()
//                }
//
//                if changeCondition == false{
//                    Circle()
//                        .fill(.red)
//                        .frame(width: 50, height: 50)
//                }
//            }
            
            VStack(spacing: 20){
                Button("IS LOADING : \(isLoading.description)"){
                    isLoading.toggle()
                }
                
                if isLoading{
                    ProgressView()
                }
            }
        }
    }
}

struct conditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        conditionalBootcamp()
    }
}
