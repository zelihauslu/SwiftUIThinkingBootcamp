//
//  testBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 2.05.2022.
//

import SwiftUI

struct testBootcamp: View {
    
    @State var background : Color = Color.white
    @State var name : String = "Zeliha Uslu"
    @State var likeCount : Int = 0
    
    var body: some View {
        ZStack{
            background
                .ignoresSafeArea(.all)
            
            VStack{
                Rectangle()
                    .fill(.white)
                    .frame(width: 350, height: 350, alignment: .center)
                    .shadow(radius: 10)
                    .overlay(
                    Text(name)
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(5)
                        .padding(.horizontal)
                        .background(.yellow)
                        .cornerRadius(15)
                        .padding()
                        
                    ,alignment: .topLeading
                        
                       
                    
                        
                ).padding(30)
                
                HStack{
                    
                    Button(action: {
                        likeCount = likeCount + 1
                    }, label: {
                        Circle()
                            .fill(.white)
                           .frame(width: 40, height: 40, alignment: .topLeading)
                            .shadow(radius: 10)
                           .overlay(
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                                .font(.title3)
                            )
                            .padding(.horizontal)
                            .padding(.leading, 50)
                    })
                    
                    Button(action: {
                        likeCount = likeCount - 1
                    }, label: {
                        Circle()
                            .fill(.white)
                            .frame(width: 40, height: 40, alignment: .leading)
                            .shadow(radius: 10)
                           .overlay(
                            Image(systemName: "heart.slash.fill")
                                .foregroundColor(.red)
                                .font(.title3)
                            )
                    })
                   
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                
                if likeCount > 0{
                    Text("Like \(likeCount)")
                }
                
                
                HStack(alignment: .top){
                    Text("Name")
                        .font(.title3)
                        .frame(alignment: .top)
                    Text("This is a caption This is a caption This is a caption This is a caption This is a caption This is a caption This is a caption This is a caption This is a caption")
                        .font(.caption)
                        .frame(alignment: .center)
                        .padding(.horizontal)
                }
                .padding(25)
                Spacer()
            }
        }
    }
}

struct testBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        testBootcamp()
    }
}
