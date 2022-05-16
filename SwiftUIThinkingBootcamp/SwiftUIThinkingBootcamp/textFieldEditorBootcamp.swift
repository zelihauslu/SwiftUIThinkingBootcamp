//
//  textFieldEditorBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 16.05.2022.
//

import SwiftUI
struct textFieldEditorBootcamp: View {
    @State var textEditorText : String = "This is the starter text"
    @State var savedText : String = ""

    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                // we can't change background color with .background so we use:
                    .colorMultiply(.yellow)
                    .cornerRadius(10)
            Button(action: {
                savedText = textEditorText
            }, label: {
                Text("save".uppercased())
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
                Text(savedText)
                Spacer()
            }.navigationTitle("TextEditor Bootcamp")
                .padding()
                .background(.green)
        }
        }
    }

struct textFieldEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        textFieldEditorBootcamp()
    }
}
