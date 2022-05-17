//
//  sliderBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 17.05.2022.
//

import SwiftUI

struct sliderBootcamp: View {
    @State var sliderValue : Double = 1
    
    @State var color : Color = .green
    var body: some View {
        
        VStack {
            Text("Range: ")
            Text(String(format: "%.2f", sliderValue))
//            Slider(value: $sliderValue, in: 1...100, step: 1.0)
//                .accentColor(.green)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: {_ in
                    color = . green
                },
                minimumValueLabel:
                    Text("1"),
                maximumValueLabel:
                    Text("10"),
                label: {
                    Text("title")
                })
            .padding()
        }
    }
}

struct sliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        sliderBootcamp()
    }
}
