//
//  testRentACarBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 6.05.2022.
//

import SwiftUI

struct testRentACarBootcamp: View {
    
    @State var backgroundColor : Color = Color.white
    @State var Ford : [String] = [
        "Focus", "Fieasta"
    ]
    
    var body: some View {
        
        ZStack{
            
            backgroundColor.ignoresSafeArea(.all)
            
            VStack{
                VStack(alignment: .leading){
                    Spacer()
                    Rectangle()
                        .fill(.orange)
                        .frame(width: 300, height: 370)
                    
                    Text("Premium ride Affordable price ")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                        .padding(.top)
                        .padding(.bottom, 1)
                        .padding(.leading, 29)
                    
                    VStack(alignment: .leading) {
                        Text("Wide range of luxury cars for hourly rental.")
                        Text("Prestige cars what nobody an resist.")
                        
                    }.font(.caption)
                        .foregroundColor(.black.opacity(0.5))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom)
                        .padding(.horizontal, 47)
                    
                }
                HStack(){
                    Button(action: {
                        
                    }, label: {
                        Text("Let's Go!")
                    }).font(.title3.bold())
                        .foregroundColor(.white)
                        .padding(15)
                        .padding(.horizontal, 95)
                        .background(Color.black.cornerRadius(25))
                    
                }
                Spacer()
                Spacer()
                Spacer()
            }
        }
        
        ZStack{
            
            backgroundColor.ignoresSafeArea(.all)
            
            VStack{
                NavigationView{
                    List{
                        Section("Ford"){
                            ForEach(Ford, id: \.self){ford in
                                Text(ford.capitalized)
                            }   .onDelete(perform: delete)                   .listRowBackground(Color.orange.opacity(0.4))
                                .listStyle(.sidebar)
                        }
                    }.listStyle(.automatic)
                        .navigationTitle("CARS")
                        .navigationBarItems(leading: EditButton()).accentColor(.black)
                }
            }
        }
    }
    
    func delete(indexSet: IndexSet){
        Ford.remove(atOffsets: indexSet)
    }

}
