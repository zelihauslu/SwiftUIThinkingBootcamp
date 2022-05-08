//
//  contextMenuBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 8.05.2022.
//

//import SwiftUI
//
//struct contextMenuBootcamp: View {
//
//    @State var backgroundColor : Color = Color.yellow
//
//    var body: some View {
//        VStack(alignment: .leading, spacing: 10){
//
//            Image(systemName: "house.fill")
//                .font(.title)
//            Text("SwiftUI Thinking")
//                .font(.headline)
//            Text("How to use Context Menu")
//                .font(.subheadline)
//        }
//        .foregroundColor(.white)
//        .padding(30)
//        .background(backgroundColor).cornerRadius(30)
//        .contextMenu(.init(menuItems: {
//            Button(action: {
//                backgroundColor = .purple
//            }, label: {
//                HStack{
//                    Label("Share ", systemImage: "flame.fill")
//
//                }
//            })
//            Button(action: {
//                backgroundColor = .red
//            }, label: {
//                Label("Report")
//            })
//            Button(action: {
//                backgroundColor = .blue
//            }, label: {
//                HStack{
//                    Label("Like ", systemImage: "heart.fill")
//
//                }
//            })
//        })
//        )
//
//    }
//
//    struct contextMenuBootcamp_Previews: PreviewProvider {
//        static var previews: some View {
//            contextMenuBootcamp()
//        }
//    }
//}
