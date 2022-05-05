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
    
    var body: some View {
        
        NavigationView {
            List{
                Section("Fruits") {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
//                    .onMove(perform: {
//                        indices, NewOffset in
//                        fruits.move(fromOffsets: <#T##IndexSet#>, toOffset: <#T##Int#>)
//                    })
                    
    //                .onDelete(perform: { indexSet in
    //                    delete(indexSet: indexSet)
    //                })
                }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton())
            
        }
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)    }
}

struct listBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        listBootcamp()
    }
}
