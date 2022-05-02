//
//  stateBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 2.05.2022.
//

import SwiftUI

struct stateBootcamp: View {
    
    @State var background : Color = Color.yellow
    @State var title : String = "Hello it's new title"
    @State var title2 : String = "Hello i am button two's title"
    @State var count : Int = 0
    
    var body: some View {
        ZStack{
           background
                .ignoresSafeArea(.all)
            VStack{
                Text("Title")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text("Count : \(count)")
                    .font(.headline)
                    .underline()
                
                
                HStack{
                    
                    Button(title){
                        
                        title = "Button1"
                        background = .green
                    }
                    .accentColor(.white)
                    .padding()
                    .background(
                        .orange
                    )
                    Button(title2){
                        title2 = "Button1"
                        background = .purple
                        
                    }
                    .accentColor(.white)
                    .padding()
                    .background(
                        Capsule()
                            .fill(.orange.opacity(0.9))
                        
                    )
                    
                    Button("Increase"){
                        count = count + 1
                        
                    }.accentColor(.white)
                        .padding()
                        .background(
                            Capsule()
                                .fill(.green.opacity(0.9))
                        )
                    
                    Button("Reset"){
                        count = 0
                        
                    }.accentColor(.white)
                        .padding()
                        .background(
                            Capsule()
                                .fill(.red.opacity(0.9))
                        )
                }
                
                Button(action: {
                                  
                }, label: {
                    Circle()
                        .fill(.yellow)
                        .frame(width: 75, height: 75)
                        .shadow(radius: 10)
                        .overlay(
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(.orange)
                            
                        )
                }).padding()
            }
        }
    }
}



                  
struct stateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        stateBootcamp()
    }
}
