//
//  extractSubviewsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 2.05.2022.
//

import SwiftUI

struct extractSubviewsBootcamp: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea(.all)
            contentLayer
        }
    }
    
    
    var contentLayer: some View{
        HStack{
            myItem(background: .purple, count: 5, title: "hello")
            myItem(background: .green, count: 59, title: "aaa")
            myItem(background: .gray, count: 35, title: "bbb")
        }
    }
    
}

struct extractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        extractSubviewsBootcamp()
    }
}

struct myItem: View {
    
    let background : Color
    let count : Int
    let title : String
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }.padding()
            .background(background)
            .cornerRadius(15)
    }
}
