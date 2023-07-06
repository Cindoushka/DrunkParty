//
//  Accueil.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 27/06/2023.
//

import SwiftUI

struct Accueil: View {
    
    var width: CGFloat = UIScreen.main.bounds.width - 130
    var height: CGFloat = UIScreen.main.bounds.height - 60

    
    var body: some View {
        
        NavigationStack {
            ZStack {
                
                VStack {
                    VStack {
                        
                        Text("PARTY DRUNK")
                            .font(.system(size: 70))
                            .foregroundColor(Color("gold"))
                            .fontWeight(.bold)
                            .padding(.top, 10)
                        
                        Spacer()
                        
                        Text("Combien de joueurs êtes vous?")
                            .foregroundColor(.white)
                        
                        ListeUtilisateurds()
                        
                        BoutonPlay()
                    }
                    .frame(width: width, height: height)
                    .background(
                        LinearGradient(colors: [Color("colorbottom"), Color("colorcard")], startPoint: .topLeading, endPoint: .bottomTrailing))
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

struct Accueil_Previews: PreviewProvider {
    static var previews: some View {
        Accueil()
            .environmentObject(ParticipantsList())
    }
}
