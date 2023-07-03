//
//  ListeUtilisateurds.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 28/06/2023.
//

import SwiftUI

struct ListeUtilisateurds: View {
    
    @State var participants = 1.0
    
    @State private var isEditing = false

    @State var listeParticipants: [String] = ["Maitre Du Jeu"]

    @StateObject var participantsList = ParticipantsList()

    var body: some View {
        
        VStack(spacing: 6) {
            Slider(
                value: $participants,
                in: 1...20,
                step: 1
            )
            {
                Text("Speed")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("20")
            } onEditingChanged: { editing in
                isEditing = editing
            }
            .frame(width: 200)
            .foregroundColor(.white)
            Text("\(Int(participants))")
                .foregroundColor(isEditing ? .black : .white)
            
                FormulairePsedos(participants: $participants, listeParticipants: $listeParticipants)
                         .environmentObject(participantsList)
        

        }
        }
}

struct ListeUtilisateurds_Previews: PreviewProvider {
    static var previews: some View {
        ListeUtilisateurds()
    }
}
