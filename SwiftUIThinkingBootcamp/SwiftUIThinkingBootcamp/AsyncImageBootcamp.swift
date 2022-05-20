//
//  AsyncImageBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 20.05.2022.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400890")
    
    var body: some View {
        
        AsyncImage(url: url){phase in
            switch phase{
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(30)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
                    .frame(width: 40, height: 40)
                    .background(.gray)
                    .cornerRadius(10)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//        }, placeholder: {
//            ProgressView()
//        })
        
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
