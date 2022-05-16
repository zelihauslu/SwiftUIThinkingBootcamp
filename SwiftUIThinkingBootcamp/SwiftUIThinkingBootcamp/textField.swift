//
//  textField.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 16.05.2022.
//

import SwiftUI
struct textField: View {
    @State var textField : String = ""
    @State var dataArray : [String] = []

    var body: some View {
       
        NavigationView {
            VStack{
                TextField("Type something here...", text: $textField)
                    .padding()
                    .foregroundColor(.blue)
                    .background(.gray.opacity(0.3))
                    .cornerRadius(20)
                
                Button(action: {
                    if textIsAppropriate(){
                        saveText()
                    }
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }).disabled(!textIsAppropriate()) // can not click
                
                ForEach(dataArray, id:\.self){ data in
                    Text(data)
                }
                
                Spacer()
                
            } .padding()
                .navigationTitle("TextField Bootcamp!")
               
        }
       
    }
    func textIsAppropriate() -> Bool {
        //check text
        if textField.count >= 3 {
            return true
        }
            return false
    }
    func saveText(){
        dataArray.append(textField)
        textField = ""
    }
    
    
}

struct textField_Previews: PreviewProvider {
    static var previews: some View {
        textField()
    }
}

