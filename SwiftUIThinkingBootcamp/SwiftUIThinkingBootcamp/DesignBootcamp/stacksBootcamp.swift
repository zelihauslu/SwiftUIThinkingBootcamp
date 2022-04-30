//
//  stacksBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 30.04.2022.
//

import SwiftUI

struct stacksBootcamp: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50, content: {
            Rectangle()
                .fill(.yellow)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
        })
    }
}

struct stacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        stacksBootcamp()
    }
}
