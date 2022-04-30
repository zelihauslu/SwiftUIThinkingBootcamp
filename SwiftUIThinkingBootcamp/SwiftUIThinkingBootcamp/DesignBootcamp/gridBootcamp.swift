//
//  gridBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 30.04.2022.
//

import SwiftUI

struct gridBootcamp: View {
    
    let columns: [GridItem] = [
//        GridItem(.fixed(50)),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)

        ]
    
    var body: some View {
//
//            Rectangle()
//                .fill(.white)
//                .frame(height: 400)
        
        ScrollView{
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: nil,
                      pinnedViews: [.sectionHeaders], // It's Really COOOOOOOOL
                      content:{
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                    .padding()

                ){
                    ForEach(0..<20){ index in
                   Rectangle()
                       .frame(height: 150)
                    }
                    
                    
            }
                
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.purple)
                    .padding()

                ){
                    ForEach(0..<20){ index in
                   Rectangle()
                        .fill(.mint)
                       .frame(height: 150)
                    }
                    
                    
            }
        }
    )}
}

struct gridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        gridBootcamp()
    }
}
                      }
