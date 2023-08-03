//
//  BoutonAccueil.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 03/07/2023.
//

import SwiftUI

struct BoutonAccueil: View {
    
    @EnvironmentObject var participantsList: ParticipantsList

    @Binding var participants : Double
    
    var body: some View {
        NavigationLink {
            Accueil()
        } label: {
            VStack {
                Image(systemName: "house.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color("gold"))
            }
        }
        .padding()
        .onTapGesture {
            participants = 3.00
        }
    }
}

struct BoutonAccueil_Previews: PreviewProvider {
    static var previews: some View {
        BoutonAccueil(participants: .constant(3.00))
    }
}
