//
//  Accueil.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 27/06/2023.
//

import SwiftUI

struct Accueil: View {
    
    var width: CGFloat = UIScreen.main.bounds.width - 120
    var height: CGFloat = UIScreen.main.bounds.height - 50

    
    var body: some View {
        NavigationView {
            ZStack {
                
                VStack {
                    
                    Text("Prêts pour un Je n'ai jamais?")
                    
                    Text("Combien de joueurs êtes vous?")
                    
                    ListeUtilisateurds()
                    
                    BoutonPlay()
                }
                .frame(width: width, height: height)
                .background(
                    LinearGradient(colors: [Color("colorcard"), Color("colorbottom")], startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(24)
                .shadow(color: .gray, radius: 12)
            }
            .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color.black)
        }
    }
}

struct Accueil_Previews: PreviewProvider {
    static var previews: some View {
        Accueil()
    }
}
