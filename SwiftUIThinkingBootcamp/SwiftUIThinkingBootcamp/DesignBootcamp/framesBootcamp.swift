//
//  framesBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 27.04.2022.
//

import SwiftUI

struct framesBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.cyan)
            .frame( maxWidth: .infinity,  alignment: .center)
            .background(.orange)
    }
}

struct framesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        framesBootcamp()
    }
}
