//
//  ProfileView.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 1.06.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn : Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(.purple)
                .frame(width: 50, height: 50)
            VStack{
                Text(currentUserName ?? "unknown")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Text("\(currentUserAge ?? 0)")
                    .font(.title2)
                    .foregroundColor(.white)
                Text(currentUserGender ?? "unknown")
                    .font(.title3)
                    .foregroundColor(.gray)
            }
            .frame(width: 200, height: 200)
            .background(Color.purple)
            .cornerRadius(15)
            .shadow(radius: 20)
            .padding()
            Text("sign out")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.purple)
                .frame(width: 150, height: 50)
                .cornerRadius(10)
                .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.purple, lineWidth: 4)
                    )
                .onTapGesture {
                    signOut()
                }
        }.padding()
}
    func signOut(){
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()){
            currentUserSignedIn = false
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
