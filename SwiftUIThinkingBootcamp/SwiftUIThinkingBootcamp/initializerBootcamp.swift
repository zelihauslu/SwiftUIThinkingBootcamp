//
//  initializerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 30.04.2022.
//

import SwiftUI

struct initializerBootcamp: View {
    
    var backgroundColor : Color = Color.red
    var count : Int = 5
    var title : String = "Apples"
    
    
//    init(backgroundColor: Color, count: Int, title: String){
//        self.backgroundColor = backgroundColor
//        self.count = count
//        self.title = title
    
    init(count: Int, fruit: Fruit){
        self.count = count
      //  self.fruit = fruit we have to delete this because we created enums
        
        if fruit == .apple{
            self.title = "Apples"
            self.backgroundColor = .red
        } else{
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit{
        case apple
        case orange
    }
    
    var body: some View {
       
        VStack{
            Text("\(count)")
                .font(.largeTitle)
                .underline()
                .padding(.bottom)
            Text("\(title)")
                .font(.headline)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .foregroundColor(.white)
        .cornerRadius(15)
        
    }
}

struct initializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        //also we can initialize in there
        // like -> initializerBootcamp(backgroundColor: .orange, count: 55)
        HStack{
            initializerBootcamp(count: 72, fruit: .orange)
            initializerBootcamp(count: 46, fruit: .apple)
        }

    }
}
