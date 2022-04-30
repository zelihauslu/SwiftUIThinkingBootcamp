//
//  scrollViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 30.04.2022.
//

import SwiftUI

struct scrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false, content: {
//            HStack{
//                ForEach(0..<50){ index in
//                    Rectangle()
//                        .fill(.orange)
//                        .frame(height: 300)
//                }
//            }
//        })
        
        ScrollView{
            LazyVStack{
                ForEach(0..<15){ index in
                    ScrollView(.horizontal, showsIndicators: false, content:{
                        LazyHStack{
                            ForEach(0..<10){ index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 200, alignment: .center)
                                    .shadow(color: .black.opacity(0.3), radius: 5)
                                    .padding()
                            }
                            
                        }
                    })
                }
            }
        }
        
    }
}

struct scrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        scrollViewBootcamp()
    }
}
