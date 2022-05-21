//
//  ModelsBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 21.05.2022.
//

import SwiftUI

struct UserModel: Identifiable{
    let id: String = UUID().uuidString //to randomly generate its own id
    let name: String
    let username: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelofBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(name: "Zeliha ", username: "zelihaaauslu", followerCount: 897, isVerified: true),
        UserModel(name: "Salih ", username: "salihuslu", followerCount: 342, isVerified: true),
        UserModel(name: "Ceren ", username: "akacern", followerCount: 603, isVerified: false),
        UserModel(name: "Mert ", username: "mertcatili", followerCount: 194, isVerified: false),
        UserModel(name: "İrem ", username: "kurtirem", followerCount: 567, isVerified: true)
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                            .padding(.horizontal)
                        VStack {
                            Text(user.name)
                                .font(.headline)
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        
                        VStack{
                            Text("\(user.followerCount)")
                            Text("Followers")
                                .foregroundColor(.gray)

                        }
                    }.padding(.vertical, 10)
                }
                
            }.listStyle(InsetGroupedListStyle())
            .navigationTitle("Model of Bootcamp")
        }
    }
}

struct ModelofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelofBootcamp()
    }
}
