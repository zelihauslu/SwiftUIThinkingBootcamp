//
//  gradientsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 26.04.2022.
//

import SwiftUI

struct gradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30.0)
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.orange]),
                    startPoint: .leading,
                    endPoint: .trailing)
                // .bottomTrailing
                
            )
            .frame(width: 300, height: 200)
                
    }
}

struct gradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        gradientsBootcamp()
    }
}
