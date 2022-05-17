//
//  pickerBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 16.05.2022.
//

import SwiftUI

struct pickerBootcamp: View {
    @State var selection : String = "Most Recent"
    @State private var justTime = Date()
    let filterOptions : [String] = [
    "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.blue
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
        VStack{
            
            DatePicker("",selection: $justTime,
                       displayedComponents: .hourAndMinute)
            
            HStack{
                Text("Your age: ")
                Text(selection)
            }
            
            Picker(
                selection: $selection,
                   label: Text("Picker"),
                   content: {
                       ForEach(18..<100){ age in
                           Text("\(age)")
                               .tag("\(age)")
                       }
                   })
            .pickerStyle(.wheel)
            .background(.gray.opacity(0.1))
            .font(.headline)
            
            
//            Picker(
//                selection: $selection,
//                label: {
//                    HStack{
//                        Text("Filter: ")
//                        Text(selection)
//                    }.font(.headline)
//                                            .foregroundColor(.white)
//                                            .padding()
//                                            .padding(.horizontal)
//                                            .background(.blue)
//                                            .cornerRadius(10)
//                                            .shadow(color: .blue, radius: 10, x: 0, y: 10)
//                },
//                content: {
//                    ForEach(filterOptions, id:\.self){option in
//                        Text(option)
//                            .tag(option)
//                    }
//                }).pickerStyle(.menu)
            
            Picker(
                selection: $selection,
                content: {
                    ForEach(filterOptions.indices){ index in
                        Text(filterOptions[index])
                            .tag(filterOptions[index])
                    }
                },
                label: {
                    Text("picker")
                }).pickerStyle(SegmentedPickerStyle())
            
//            Picker(
            
//                selection: $selection,
//                label: {
//                    HStack{
//                        Text("Filter: ")
//                        Text(selection)
//                    }.font(.headline)
//                        .foregroundColor(.white)
//                        .padding()
//                        .padding(.horizontal)
//                        .background(.blue)
//                        .cornerRadius(10)
//                        .shadow(color: .blue, radius: 10, x: 0, y: 10),
//                content: {
//                    ForEach(filterOptions, id:\.self){option in
//                        Text(option)
//                            .tag(option)
//                    }
//                })
//
//            .pickerStyle(.menu)
           
        }
    }
}

struct pickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        pickerBootcamp()
    }
}
