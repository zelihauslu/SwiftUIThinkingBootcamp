//
//  forEachBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 30.04.2022.
//

import SwiftUI

struct forEachBootcamp: View {
    
    let data : [String] = ["hello", "What's up", "see u"]
    let myString : String = "Hello"
    
    
    var body: some View {
//        VStack{
//            ForEach(0..<10) { index in
//                HStack{
//                    Circle()
//                        .frame(width: 10, height: 10)
//                    Text("Number:  \(index)")
//                }
//            }
//        }
        
        VStack{
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
                    .padding()
                    .background(.blue)
            }
        }
        
        
    }
}

struct forEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        forEachBootcamp()
    }
}
