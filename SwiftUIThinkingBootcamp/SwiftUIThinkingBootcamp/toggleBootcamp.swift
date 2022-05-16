//
//  toggleBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 16.05.2022.
//

import SwiftUI

struct toggleBootcamp: View {
    @State var toggleIsOn : Bool = false
    var body: some View {
        VStack {
            HStack {
            Text("Status: ")
                Text(toggleIsOn ? "Online" : "Offline")
            }.font(.largeTitle)
                
            Toggle(isOn: $toggleIsOn,
                  label: {
               Text("Hey! I am a toggle :)")
           })
            .toggleStyle(SwitchToggleStyle(tint: .mint))
        }
    }
}

struct toggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        toggleBootcamp()
    }
}
