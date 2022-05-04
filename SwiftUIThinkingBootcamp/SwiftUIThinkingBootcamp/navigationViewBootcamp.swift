//
//  navigationViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 4.05.2022.
//

import SwiftUI

struct navigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("hello", destination: myOtherPage())
                
                Text("hello")
                Text("hello")
                Text("hello")
            }
            .navigationTitle("All Inboxes")
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                            .foregroundColor(.blue)
                        Image(systemName: "flame.fill")
                            .foregroundColor(.red)
                },
                trailing:
                    NavigationLink(
                    destination:
                    myOtherPage(),
                    label: {
                    Image(systemName: "gear")
                })
                    .accentColor(.purple)
                    
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(false)
        )}
    }
}

struct myOtherPage: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea(.all)
                .navigationTitle("Green Screen")
            
            VStack{
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label:{
                    Image(systemName: "xmark")
                        .foregroundColor(.green)
                        .padding()
                        .background(Color.red.cornerRadius(50))

                       
                })
                
                
                NavigationLink("Click here", destination: Text("3rd screen!"))
                    .navigationBarHidden(true)

            }
        }
    }
}

struct navigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        navigationViewBootcamp()
    }
}
