//
//  bindingBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 2.05.2022.
//

import SwiftUI

struct bindingBootcamp: View {
    
    @State var background : Color = Color.green
    @State var title : String = "title"
    
    
    var body: some View {
        ZStack{
            background
                .ignoresSafeArea(.all)
            VStack{
                Text(title)
                ButtonView(background: $background, title: $title)
            }
           
            
            
        }
    }
}


struct ButtonView: View{
    
    @Binding var background: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View{
        VStack{
            Button(action: {
                background = .brown
                buttonColor = .purple
                title = "benCokDegistim"
            }, label: {
                Text("Change")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(buttonColor)
                    .cornerRadius(15)
            })
        }
    }
}

struct bindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        bindingBootcamp()
    }
}
