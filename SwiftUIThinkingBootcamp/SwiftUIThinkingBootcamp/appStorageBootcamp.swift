//
//  appStorageBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 22.05.2022.
//

import SwiftUI

struct AppStorageofBootcamp: View {
    
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack(spacing:30 ){
            Text(currentUsername ?? "text something here")
            if let name = currentUsername{
                Text(name)
            }
            Button("save"){
                let name: String = "Nick"
                currentUsername = name
            }
        }
    }
}

struct AppStorageofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageofBootcamp()
    }
}
