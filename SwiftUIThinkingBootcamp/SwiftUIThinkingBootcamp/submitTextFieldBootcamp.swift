//
//  submitTextFieldBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 20.05.2022.
//

import SwiftUI

struct submitTextFieldBootcamp: View {
    @State private var text : String = ""

    var body: some View {
        VStack {
            TextField("Name: ", text: $text)
                .padding()
                .background(.gray)
                .cornerRadius(20)
                .padding()
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the console")
            }
            TextField("Surname: ", text: $text)
                .padding()
                .background(.gray)
                .cornerRadius(20)
                .padding()
                .submitLabel(.next)
                .onSubmit {
                    print("Something to the console")
            }
            TextField("E-mail: ", text: $text)
                .padding()
                .background(.gray)
                .cornerRadius(20)
                .padding()
                .submitLabel(.search)
                .onSubmit {
                    print("Something to the console")
            }
        }
        
    }
}

struct submitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        submitTextFieldBootcamp()
    }
}
