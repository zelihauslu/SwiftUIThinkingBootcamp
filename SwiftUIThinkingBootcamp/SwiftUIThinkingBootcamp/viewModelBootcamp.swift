//
//  viewModelBootcamp.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 21.05.2022.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id : String = UUID().uuidString
    let name : String
    let count : Int
}
//all logic in here is about data
class FruitViewModel: ObservableObject {
    
    //for example: If the fruit array changes informs that something changes in the model
    //so we should show that as a reference in view we will use it
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "apple", count: 17)
        let fruit2 = FruitModel(name: "strawberry", count: 3)
        let fruit3 = FruitModel(name: "orange", count: 5)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    func deleteFruits(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}
//all logic in here is about updating to the view
struct ViewModelofBootcamp: View {
    //@StateObject -> USE THIS ON CREATION / INIT
    //@ObservableObject -> USE THIS FOR SUBVIEWS
    //We reference this way
    @StateObject  var fruitViewModel : FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List{
                
                if fruitViewModel.isLoading {
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray) {  fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .font(.headline)
                                .foregroundColor(.red)
                            Text(fruit.name)
                        }
                    }.onDelete(perform: fruitViewModel.deleteFruits)
                }
            }.listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: RandomScreen( fruitViewModel: fruitViewModel),
                                        label: {
                                            Image(systemName: "arrow.right")
                                                                    .font(.title)
                                                                    .foregroundColor(.blue)
                                        })
           
            )
           
        }
    }
}
struct RandomScreen: View{
    //back to navigationView
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
            VStack{
                ForEach(fruitViewModel.fruitArray) { fruit in
                    HStack{
                        Text(fruit.name)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    }
            }
        }
    }
}
struct ViewModelofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelofBootcamp()
    }
}
