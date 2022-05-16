//
//  colorPickerBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 16.05.2022.
//

import SwiftUI

struct colorPickerBootcamp: View {
    @State var backgroundColor : Color = .green
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
            
            ColorPicker("Select a color",
            selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .padding(.horizontal)
            .background(.gray)
            .cornerRadius(20)
            .shadow(color: .gray, radius: 15, x: 0, y: 10)
            .padding()
            .background(backgroundColor)
            .foregroundColor(.white)
        }
    }
}

struct colorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        colorPickerBootcamp()
    }
}
