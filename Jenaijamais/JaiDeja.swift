//
//  JaiDeja.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 03/07/2023.
//

import SwiftUI

struct JaiDeja: View {
    
    var width: CGFloat = UIScreen.main.bounds.width - 120
    var height: CGFloat = UIScreen.main.bounds.height - 50

    var body: some View {
        NavigationView {
            ZStack {
                
                VStack {
                    
                    Spacer()

                    Text("Bravo ! Tu bois !")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    
                    Spacer()
                    HStack {

                        BoutonStop()
                        
                        Spacer().frame(width: 450)
                        
                        BoutonNext()

                    }
                    
                }
                .frame(width: width, height: height)
                .background(
                    LinearGradient(colors: [Color("colorcard"), Color("colorbottom")], startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(24)
            }
            .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color.black)
        }
        .navigationBarHidden(true)
    }
}


struct JaiDeja_Previews: PreviewProvider {
    static var previews: some View {
        JaiDeja()
    }
}
