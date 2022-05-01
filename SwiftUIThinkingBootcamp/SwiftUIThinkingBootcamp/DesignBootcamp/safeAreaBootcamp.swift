//
//  safeAreaBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 30.04.2022.
//

import SwiftUI

struct safeAreaBootcamp: View {
    var body: some View {
//        ZStack{
//
//            Color.orange
//                .ignoresSafeArea(.all)
//
//            ScrollView{
//                VStack{
//                    Text("Title goes here")
//                        .font(.largeTitle)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding()
//
//                    ForEach(0..<10){index in
//                        RoundedRectangle(cornerRadius: 25)
//                            .fill(.white)
//                            .frame(height: 150)
//                            .shadow(radius: 10)
//                            .padding()
//                    }
//                }
//            }
////            .background(.blue)
//        }
     
            ScrollView{
                VStack{
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    ForEach(0..<10){index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding()
                    }
                }
            }
           .background(.red)
           .ignoresSafeArea(edges: .top)
    }
}

struct safeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        safeAreaBootcamp()
    }
}
