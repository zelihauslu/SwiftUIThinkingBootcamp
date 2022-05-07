//
//  testRentACarBootcamp2.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 7.05.2022.
//

import SwiftUI

struct testRentACarBootcamp2: View {
    
    @State var backgroundColor : Color = .black
    @State var isNavigationBarHidden: Bool = true
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom){
                
                backgroundColor.ignoresSafeArea(.all)
                
                VStack{
                    
                    VStack(alignment: .leading){
                        Spacer()
                        
                        VStack(alignment: .leading){
                            Image("iconCar")
                                .resizable()
                                .scaledToFit()
                                .offset(x: -100)
                                .shadow(color: .white.opacity(0.4), radius: 10)
                        }
                        Text("Premium ride Affordable price ")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .padding(.top)
                            .padding(.bottom, 1)
                            .padding(.leading, 29)
                            .shadow(color: .white.opacity(0.3), radius: 10)
                        
                        VStack(alignment: .leading) {
                            Text("Wide range of luxury cars for hourly rental.")
                            Text("Prestige cars what nobody an resist.")
                            
                        }.font(.caption)
                            .foregroundColor(.white.opacity(0.5))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom)
                            .padding(.horizontal, 47)
                        
                    }
                    
                    
                    NavigationLink(destination: denemeSayfası(), label: {
                        Text("Let's Go")
                            .font(.title3.bold())
                            .foregroundColor(.black)
                            .padding(15)
                            .padding(.horizontal, 95)
                            .background(Color.yellow.cornerRadius(25))
                            .shadow(color: .white.opacity(0.5), radius: 3)
                        
                    })
                    
                    
                    
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle("Hidden Title")
            .navigationBarHidden(true)
        }
        
    }
    
}


struct denemeSayfası : View {
    
    @State var ford : [String] = [
        "Focus", "Fiesta"
    ]
    
    var body: some View{
        
        NavigationView {
            VStack{
                
                List{
                    Section("Ford"){
                        ForEach(ford, id: \.self){ ford in
                            NavigationLink(destination: carPage(), label: {
                                Text(ford.capitalized)
                            })
                        }.onDelete(perform: delete)
                    }
                }.navigationTitle("Cars")
                    .navigationBarItems(leading: Image(systemName: "person.fill"))
                    .navigationBarItems(trailing: Image(systemName: "gear"))
            }
        }   .navigationBarTitle("Hidden Title2")
            .navigationBarHidden(true)
    }
    func  delete(indexSet: IndexSet){
        ford.remove(atOffsets: indexSet)
    }
}

struct carPage: View{
    
    @State var showInfo : Bool = false
    
    var body: some View{
        NavigationView{
            ZStack{
                Color.white
                
                VStack{
                    VStack(alignment: .trailing){
                        Button(action: {
                            showInfo.toggle()
                    }, label: {
                        Text("Show More")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .background(.yellow)
                            .cornerRadius(15)
//                            .frame(height: 50)
                            .frame(maxWidth: .infinity, alignment: .topTrailing)
                    }).padding()
                        
                    }
                    
                    if showInfo{
                        ZStack(alignment: .bottom){
    
                            RoundedRectangle(cornerRadius: 30)
                                .fill(.black)
                                .frame(maxWidth: .infinity)
                                .frame(height: UIScreen.main.bounds.height * 0.55)
                                .overlay(VStack{
                                    HStack{
                                        VStack{
    
                                            Text("Name")
                                                .font(.title2)
                                                .fontWeight(.bold)
                                            Text("price")
                                                .opacity(0.8)
                                        }.foregroundColor(.white)
                                        Spacer()
                                        Image(systemName: "star.fill").foregroundColor(.yellow)
                                        Text("4.3")
                                            .foregroundColor(.white)
                                            .fontWeight(.bold)
                                    }
                                    .padding(30)
    
                                    VStack{
                                        HStack{
    
                                            Rectangle()
                                                .fill(.white.opacity(0.1))
                                                .frame(width: 110, height: 110)
                                                .cornerRadius(10)
                                                .overlay(
                                                    VStack{
                                                        Image(systemName: "speedometer")
                                                            .resizable()
                                                            .frame(width: 20, height: 20, alignment: .center)
    
                                                        Text("Top Speed")
                                                            .font(.caption)
                                                            .opacity(0.6)
    
                                                        Text("280km/h")
                                                            .padding(.top, 3)
                                                    }.foregroundColor(.white)
                                                )
                                            Rectangle()
                                                .fill(.white.opacity(0.1))
                                                .frame(width: 110, height: 110)
                                                .cornerRadius(10)
                                                .overlay(
                                                    VStack{
                                                        Image(systemName: "wifi")
                                                            .resizable()
                                                            .frame(width: 20, height: 15, alignment: .center)
    
                                                        Text("Wifi")
                                                            .font(.caption)
                                                            .opacity(0.6)
    
                                                        Text("Avaliable")
                                                            .padding(.top, 3)
                                                    }.foregroundColor(.white)
                                                )
    
                                            Rectangle()
                                                .fill(.white.opacity(0.1))
                                                .frame(width: 110, height: 110)
                                                .cornerRadius(10)
                                                .overlay(
                                                    VStack{
                                                        Image(systemName: "person.3.fill")
                                                            .resizable()
                                                            .frame(width: 20, height: 15, alignment: .center)
    
                                                        Text("Seats")
                                                            .font(.caption)
                                                            .opacity(0.6)
    
                                                        Text("4")
                                                            .padding(.top, 3)
                                                    }.foregroundColor(.white)
                                                )
                                        }
                                        HStack{
    
                                            Rectangle()
                                                .fill(.white.opacity(0.1))
                                                .frame(width: 110, height: 110)
                                                .cornerRadius(10)
                                                .overlay(
                                                    VStack{
                                                        Image(systemName: "dot.radiowaves.left.and.right")
                                                            .resizable()
                                                            .frame(width: 20, height: 15, alignment: .center)
    
                                                        Text("Sensor")
                                                            .font(.caption)
                                                            .opacity(0.6)
    
                                                        Text("Avaliable")
                                                            .padding(.top, 3)
                                                    }.foregroundColor(.white)
                                                )
                                            Rectangle()
                                                .fill(.white.opacity(0.1))
                                                .frame(width: 110, height: 110)
                                                .cornerRadius(10)
                                                .overlay(
                                                    VStack{
                                                        Image(systemName: "iphone.radiowaves.left.and.right")
                                                            .resizable()
                                                            .frame(width: 20, height: 15, alignment: .center)
    
                                                        Text("Bluetooth")
                                                            .font(.caption)
                                                            .opacity(0.6)
    
                                                        Text("4.0")
                                                            .padding(.top, 3)
                                                    }.foregroundColor(.white)
                                                )
    
                                            Rectangle()
                                                .fill(.white.opacity(0.1))
                                                .frame(width: 110, height: 110)
                                                .cornerRadius(10)
                                                .overlay(
                                                    VStack{
                                                        Image(systemName: "pyramid.fill")
                                                            .resizable()
                                                            .frame(width: 20, height: 15, alignment: .center)
    
                                                        Text("Doors")
                                                            .font(.caption)
                                                            .opacity(0.6)
    
                                                        Text("4")
                                                            .padding(.top, 3)
                                                    }.foregroundColor(.white)
                                                )
    
                                        }
                                    }
                                    HStack{
    
                                        Text("$24.99")
                                            .font(.title2)
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                        Text("Book Now")
                                            .foregroundColor(.white)
                                            .fontWeight(.bold)
                                            .padding()
                                            .padding(.horizontal)
                                            .background(Color.yellow.cornerRadius(15))
                                            .padding()
                                    }
                                    .padding(.horizontal)
                                })
                        }
                            }
                    Image("bmw")
                        .resizable()
                        .scaledToFit()
                       
                    VStack {
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("BMW")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Text("Name")
                                    .font(.body)
                                    .bold()
                                Text("this is a description about car this is a description about car this is a description about car this is a description about car this is a description about car")
                                    .font(.caption)
                                    .padding()
                            }
                            .padding()
                            .padding(.horizontal, 20)
                            Spacer()
                        }

                        VStack(alignment: .trailing){
                            Rectangle()
                                .frame(width: 400, height: 1)
                                .background(Color.black)
                                .opacity(0.06)
                                Text("$29.99")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .frame(alignment: .trailing)
                                    .padding(.horizontal)
                                Text("Per her day.")
                            .frame(alignment: .trailing)
                            .padding(.horizontal)

                        }
                    }
                    Spacer()
                    
                }.edgesIgnoringSafeArea(.bottom)
            }
        }
        .navigationBarItems(trailing: Image(systemName: "star.fill").foregroundColor(.yellow))
            
        
    }
}

struct testRentACarBootcamp2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            testRentACarBootcamp2()
            testRentACarBootcamp2()
        }
    }
}

//@State var showView : Bool = false
//
//var body: some View {
//    ZStack(alignment: .bottom){
//
//        VStack{
//            Button("Button"){
//                showView.toggle()
//            }
//            RoundedRectangle(cornerRadius: 30)
//                .fill(.black)
//                .frame(height: UIScreen.main.bounds.height * 0.5)
//            Spacer()
//        }
//
//
//        if showView{
//            RoundedRectangle(cornerRadius: 30)
//                .fill(.red)
//                .frame(height: UIScreen.main.bounds.height * 0.5)
//                .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
//
//                .animation(.easeInOut, value: 1.0)
//        }
//
//    }
//    .edgesIgnoringSafeArea(.bottom)
//}
