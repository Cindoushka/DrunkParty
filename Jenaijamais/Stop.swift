//
//  Stop.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 26/06/2023.
//

import SwiftUI

struct Stop: View {
    var width: CGFloat = UIScreen.main.bounds.width - 60
    var height: CGFloat = UIScreen.main.bounds.height - 130

    var body: some View {
        NavigationView {
            ZStack {
                
                VStack {
                    VStack {
                        
                        Spacer()

                        Text("Oh c'est déjà fini!")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding(.horizontal, 40)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        
                        
                        Text("Tu veux relancer une nouvelle partie?")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .multilineTextAlignment(.center)

                        
                        
                        Spacer()


                        BoutonAccueil(participants: .constant(3.00))
                        
                        Spacer()

                        
                    }
                    .frame(width: width, height: height)
                    .background(
                        LinearGradient(colors: [Color("colorcard"), Color("colorbottom")], startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(24)
                }
                .frame(width: (width + 8), height: (height + 8))
                .background(
                    LinearGradient(colors: [Color("gold"), Color("goldy")], startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(28)
                .shadow(color: .gray, radius: 12)
            }
            .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color.black)
        }
        .navigationBarHidden(true)
    }
}

struct Stop_Previews: PreviewProvider {
    static var previews: some View {
        Stop()
    }
}
