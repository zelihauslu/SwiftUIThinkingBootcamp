//
//  alertBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 6.05.2022.
//

import SwiftUI

struct alertBootcamp: View {
    
    @State var showAlert : Bool = false
    @State var alertType : MyAlerts? = nil // ? -> optional
    @State var background : Color = .white
//    @State var alertTitle : String = ""
//    @State var alertMessage : String = ""
    
    enum MyAlerts{
        case success
        case error
    }
    
    var body: some View {
        ZStack{
            background.ignoresSafeArea(.all)
            VStack {
                Button("Button 1!"){
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "the video couldn't be uploaded"
                showAlert.toggle()
            }
                Button("Button 2!"){
                    alertType = .success
//                    alertTitle = "Successfully uploaded video 🥳"
//                    alertMessage = "Your video is public now"
                showAlert.toggle()
            }
            }.alert(isPresented: $showAlert, content: {
                getAlert()
        })
    }
    }
    func getAlert() -> Alert{
        switch alertType {
        case .error:
            return Alert(title: Text("there was an error"), message: nil, dismissButton: .default(Text("Ok"),action: {
                background = .green
            }))
        case .success:
            return Alert(title: Text("Cong! 🥳"))
        default:
            return Alert(title: Text("Error"))
            
        }
//        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("Ok")))
//        return Alert(
//            title: Text("Error"),
//            message: Text("here we will describe the error"),
//            primaryButton: .destructive(Text("Delete"), action : {
//                background = .red
//            }),
//            secondaryButton: .cancel())
    }
}

struct alertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        alertBootcamp()
    }
}
