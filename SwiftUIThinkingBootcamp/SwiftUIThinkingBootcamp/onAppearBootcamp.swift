//
//  onAppearBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 20.05.2022.
//

import SwiftUI

struct onAppearBootcamp: View {
    @State var myText: String = "Start text."
    @State var count : Int = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50){ _ in
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                            count += 1
                            }
                    }
                }
            }.onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    myText = "This is the new text"
                }
            }).navigationTitle("onAppear \(count)")
                .onDisappear(perform: {
                    myText = "Ending Text."
                })
        }
    }
}

struct onAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        onAppearBootcamp()
    }
}
