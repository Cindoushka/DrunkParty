//
//  Cartes.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 26/06/2023.
//

import SwiftUI

struct Cartes: View {
    
    var carte : Cards
    var width: CGFloat = UIScreen.main.bounds.width - 120
    var height: CGFloat = UIScreen.main.bounds.height - 50
    
    @EnvironmentObject var participantsList: ParticipantsList
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                VStack {
                    
                    Spacer()
                    
                    if carte.label == .jamais {
                        
                        Text("\(participantsList.listeParticipants.randomElement() ?? "") bois si tu n'as jamais...")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                    } else if carte.label == .deja {
                        
                        Text("\(participantsList.listeParticipants.randomElement() ?? "") bois si tu as déjà...")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                    } else if carte.label == .bois  {
                        
                        Text("\(participantsList.listeParticipants.randomElement() ?? "")")                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                    } else if carte.label == .vote || carte.label == .all {
                        
                        Text(carte.label.rawValue)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                    }
                    
                    
                    Text(carte.textes)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .multilineTextAlignment(.center)
                        .frame(width: 360, height: 100)
                    
                    
                    HStack {
                        
                        BoutonsJamais()
                        
                        Spacer().frame(width: 450)
                        
                        BoutonDejaFait()
                        
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

struct Cartes_Previews: PreviewProvider {
    static var previews: some View {
        Cartes(carte: cartes[3])
    }
}
