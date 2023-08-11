//
//  Stop.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 26/06/2023.
//

import SwiftUI

struct Stop: View {
    var width: CGFloat = UIScreen.main.bounds.width - 20
    var height: CGFloat = UIScreen.main.bounds.height - 400
    
    @Binding var popUp: Bool

    var body: some View {
        
        VStack {
            VStack {
                
                HStack {
                    Spacer()
                    Button {
                        withAnimation(.easeInOut(duration: 0.7)) {
                            popUp.toggle()
                        }
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color("gold"))
                            .font(.system(size: 30))
                            .padding()
                    }
                }
                Text("Oh c'est déjà fini!")
                    .font(.system(size: 32))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                
                Spacer()
            
                Text("Tu veux tester un autre mode?")
                    .eduSAFont(weight: .regular, size: 32)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                
                HStack(spacing: 32) {
                    
                    BoutonModes()
                    
                    BoutonAccueil(participants: .constant(3.00))
                }
                .padding()

                
            }
            .background(
                LinearGradient(colors: [Color("colorcard"), Color("colorbottom")], startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(24)
            .frame(width: width, height: height)
            .padding(2)
            .background(Color("gold"))
            .cornerRadius(24)
            .padding(.bottom, 130)
        }
            .ignoresSafeArea()
            .frame(width: width + 20, height: height + 400)
            .background(.ultraThinMaterial)
    
    }
}

struct Stop_Previews: PreviewProvider {
    static var previews: some View {
        Stop(popUp: .constant(true))
    }
}
