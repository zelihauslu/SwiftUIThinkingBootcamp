//
//  popoverBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 4.05.2022.
//

//sheets
//animations
//transitions

import SwiftUI

struct popoverBootcamp: View {
    
    @State var showNewScreen : Bool = false
    
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea(.all)
            
            VStack{
                Button(action: {
                    showNewScreen.toggle()
                }, label: {
                    Text("Button")
                        .padding()
                        .padding(.horizontal)
                        .font(.title2)
                        .foregroundColor(.orange)
                        .background(Color.white.cornerRadius(15))
                    
                })
                Spacer()
            }
            
            // METHOD 1 - SHEET
            
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            // METHOD 2 - TRANSITION ---> for more complex app
            
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 50)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring(), value: 1)
//                }
//            }
//            .zIndex(2.0)
            
            // METHOD 3 - ANIMATION
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 80)
                .offset(y: showNewScreen ? 10.0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: 1)
        }
    }
}

struct NewScreen: View{
    
    // for method - 1
   // @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple
                .ignoresSafeArea(.all)
            
            
            Button(action: {
                // for method - 1
              //  presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.purple)
                    .font(.title)
                    .padding()
                    .background(Color.white.cornerRadius(50))
                    .padding()
                    
            })
        }
    }
}

struct popoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
//        NewScreen()
        popoverBootcamp()
    }
}
