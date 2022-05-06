 //
//  listBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 5.05.2022.
//

import SwiftUI

struct listBootcamp: View {
    
    @State var fruits : [String] = [
    "apple", "banana", "strawberry", "peach"
    ]
    @State var veggies: [String] = [
    "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        
        NavigationView {
            List{
                Section("Veggies"){
                    ForEach(veggies, id: \.self){veggie in
                        Text(veggie.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                
                Section(
                    header:
                        HStack{
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .foregroundColor(.purple)

                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.gray)

                }
            }
            .accentColor(.blue)
            .listStyle(.automatic)
            .navigationTitle("Grocery List")
            .navigationBarItems(
            leading: EditButton(),trailing: addButton)
        }.accentColor(.red)
    }
    
    var addButton : some View{
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)    }
    
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add(){
        fruits.append("Coconut")
    }
}

struct listBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        listBootcamp()
    }
}
