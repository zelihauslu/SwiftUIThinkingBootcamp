//
//  buttonBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 30.04.2022.
//

import SwiftUI

struct buttonBootcamp: View {
    
    @State var title = "This is my title"
    
    
    var body: some View {
        VStack(spacing: 20){
            Text(title)
            
            Button("Press Me!"){
                
                self.title = "Button was pressed!"
            }
            
            Button("Press Meeeeeee!"){
                
                self.title = "add button!"
            }
            
            Button(action: {
                self.title = "Button #2 pressed me"
            }, label: {
                
                Text("Save".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .accentColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(.blue)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                
            }
            )
            
            Button(action: {
                
                self.title = "Button #4"
            }, label: {
                
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            )
            
            Button(action: {
                self.title = "button #5"
            }, label: {
                Text("Finish".uppercased())
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                    Capsule()
                        .stroke(.gray, lineWidth: 2)
                                      )
            })
            
        }
        
    }
}

struct buttonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        buttonBootcamp()
    }
}
