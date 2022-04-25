//
//  textBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Zeliha Uslu on 25.04.2022.
//

import SwiftUI

struct textBootcamp: View {
    var body: some View {
        VStack{
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.".lowercased())
            // also we can use .capitalized()
            
                .frame(width: 200, height: 200, alignment: .center)
                .minimumScaleFactor(0.1)
            
            Text("Hello, world!")
    //            .baselineOffset(15.0)
                .baselineOffset(-15.0)
                .kerning(3)
                .font(.largeTitle)
                .fontWeight(.bold)
                .underline(true, color: .mint)
                .strikethrough(true, color: .yellow)
                .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                .multilineTextAlignment(.leading)
                .lineLimit(7)
                .padding()
                .frame(width: 150.0, height: 150.0)
                
            Text("The simplicity of Apple.\nIn a credit card.")
                .font(Font.system(size: 46, weight: .bold))
                .multilineTextAlignment(.center)
                .overlay {
                    LinearGradient(
                        colors: [.red, .blue, .green, .yellow],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .mask(
                        Text("The simplicity of Apple.\nIn a credit card.")
                            .font(Font.system(size: 46, weight: .bold))
                            .multilineTextAlignment(.center)
                    )
                }
            
            
            
            
            //
            
//            Improvement
//
//            As you can see, we need to repeat our text view two times. We create one to set a bound for a gradient and one as a mask.
//
//            This is hard to use, but we can make it more usable with the help of a view modifier.
//
//            Since text view already has foregroundColor(_:), I will name our new modifier foregroundLinearGradient.
//
//            extension Text {
//                public func foregroundLinearGradient(
//                    colors: [Color],
//                    startPoint: UnitPoint,
//                    endPoint: UnitPoint) -> some View
//                {
//                    self.overlay {
//
//                        LinearGradient(
//                            colors: colors,
//                            startPoint: startPoint,
//                            endPoint: endPoint
//                        )
//                        .mask(
//                            self
//
//                        )
//                    }
//                }
//            }
            
            
//            This modifier is the same implementation as before. We still need two text views as depicted by two self.
//
//            Creating a view modifier makes it easier to use. We can use it like this.
//
//            Text("The simplicity of Apple.\nIn a credit card.")
//                .font(Font.system(size: 46, weight: .bold))
//                .multilineTextAlignment(.center)
//                .foregroundLinearGradient(
//                    colors: [.red, .blue, .green, .yellow],
//                    startPoint: .leading,
//                    endPoint: .trailing
//                )

            
//            Gradient using foregroundStyle (iOS 15)
//
//            If you only focus on iOS 15, you can skip all the hard work we do so far and use the new modifier, foregroundStyle.
//
//            Foreground style will set a view's foreground elements to use a given style. You can use any style that conforms to the ShapeStyle protocol as a view's foreground. Luckily LinearGradient is also conforming to ShapeStyle. So, we can pass it as an argument for .foregroundStyle.
//
//            Text("The simplicity of Apple.\nIn a credit card.")
//                .font(Font.system(size: 46, weight: .bold))
//                .multilineTextAlignment(.center)
//                .foregroundStyle(
//
//                    LinearGradient(
//                        colors: [.red, .blue, .green, .yellow],
//                        startPoint: .leading,
//                        endPoint: .trailing
//                    )
//                )
//            The result is exactly the same as our previous method.


            
            //
                
        }
    }
}

struct textBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        textBootcamp()
    }
}
