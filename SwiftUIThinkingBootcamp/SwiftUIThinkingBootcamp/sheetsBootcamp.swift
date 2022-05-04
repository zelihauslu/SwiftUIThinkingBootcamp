//
//  sheetsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 4.05.2022.
//

import SwiftUI

struct sheetsBootcamp: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(.all)
            
            VStack{
                Button("Button"){
                    showSheet.toggle()
                }
                .padding()
                .padding(.horizontal)
                .foregroundColor(.green)
                .background(Color.white.cornerRadius(15))
                .sheet(isPresented: $showSheet,
                       content: {
                    // DO NOT ADD CONDITIONAL LOGIC
                    secondSheet()
               })
                
//                .fullScreenCover(isPresented: $showSheet, content: {
//                    secondSheet()
//                })
                
//               .sheet(
//                if ___ {
//                    sheet 1
//                }else{
//                    sheet 2
//                }
            }
        }
    }
}
struct secondSheet: View{
    
    @Environment(\.presentationMode) var mode //presentationMode
    
    @State var showSecondSheet : Bool = false
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red
                .ignoresSafeArea(.all)
            
            VStack{
                Button(action: {
                    mode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .padding()
                        .foregroundColor(.red)
                        .background(Color.white.cornerRadius(20))
                       
                })
                .padding()
            }
        }
    }
}


struct sheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        sheetsBootcamp()
     //   secondSheet()
    }
}
