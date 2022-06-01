//
//  IntroViews.swift
//  SwiftUIThinking-Bootcamp2
//
//  Created by Zeliha Uslu on 1.06.2022.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn : Bool = false
    var body: some View {
        ZStack{
            //background
            RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))]),
                center: .center,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if currentUserSignedIn{
                ProfileView()
            } else{
                OnboardingView()
            }
            //if user signed in
            //profile view
            //else
            //onboarding view
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
