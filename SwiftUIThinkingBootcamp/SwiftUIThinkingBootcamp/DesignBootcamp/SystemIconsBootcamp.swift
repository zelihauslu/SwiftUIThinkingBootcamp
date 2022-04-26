//
//  SystemIconsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 26.04.2022.
//

import SwiftUI

struct SystemIconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .renderingMode(.none)
//            .aspectRatio(contentMode: .fill)
//            .foregroundColor(.orange)
//            .frame(width: 300, height: 300)
//            .scaledToFill()
        // .scaledToFit()
        // .clipped()     }
}

struct SystemIconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SystemIconsBootcamp()
    }
}
}
