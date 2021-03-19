//
//  ZStackView.swift
//  SwiftUIViewPractice
//
//  Created by Matthew Garlington on 3/19/21.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack(alignment: .top) {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), Color.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                
                
                ZStack(alignment: .top) {
                    Spacer()
                        .frame(width: 375, height: 300)
                        .background(Color.white.opacity(0.4))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    
                    VStack(spacing: 20) {
                        Text("Depth (Z) Stacks")
                            .bold()
                            .font(.title)
                        Text("This view shows the use of ZStacks with a while 40% see through rounded rectangle. Notice how the views are stacked on top of one another including the Text view.")
                            .font(.headline)
                         
                    }
                    .padding(30)
                    
                }
                
          
                
                ZStack(alignment: .bottom) {
                    
                    Image("Virginia")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 200 , height: 200)
                   
                    Spacer()
                        .frame(width: 200 , height: 200)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.8)]), startPoint: .center, endPoint: .bottom))
                        .clipShape(Circle())
                       
                    Text("Virginia")
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                    
                    
                    
                }
                
                Text("This shows the ability to use a ZStack to display Text on top of an Image. An opacity gradient is given in order for the text to better stand out on the dark image")
                    .bold()
                    .padding()
                    
                
            }
        }
    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
