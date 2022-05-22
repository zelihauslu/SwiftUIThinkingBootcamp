//
//  listSwipeBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 22.05.2022.
//

import SwiftUI

struct listSwipeBootcamp: View {
    
    @State var fruits : [String] = [
    "strawberry", "apple", "cherry"
    ]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self){
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false){
                        Button("Archive"){
                            
                        }.tint(.blue)
                        Button("Save"){
                            
                        }.tint(.green)
                        Button("Junk"){
                            
                        }.tint(.orange)
                    }
            } // .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet){
        
    }
}

struct listSwipeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        listSwipeBootcamp()
    }
}
