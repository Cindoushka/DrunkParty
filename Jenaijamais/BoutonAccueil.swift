//
//  BoutonAccueil.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 03/07/2023.
//

import SwiftUI

struct BoutonAccueil: View {
    
    @EnvironmentObject var participantsList: ParticipantsList

    var body: some View {
        NavigationLink {
            Accueil()
        } label: {
            VStack {
                Image(systemName: "house.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
            }
        }
        .padding()
        .onTapGesture {
            participantsList.listeParticipants.removeAll()
        }
            }
}

struct BoutonAccueil_Previews: PreviewProvider {
    static var previews: some View {
        BoutonAccueil()
    }
}
