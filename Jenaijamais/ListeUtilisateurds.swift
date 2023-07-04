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
    
    @EnvironmentObject var participantsList: ParticipantsList
    
    var body: some View {
        
        VStack(spacing: 6) {
            //            Slider(
            //                value: $participants,
            //                in: 1...20,
            //                step: 1
            //            )
            //            {
            //                Text("Speed")
            //            } minimumValueLabel: {
            //                Text("1")
            //            } maximumValueLabel: {
            //                Text("20")
            //            } onEditingChanged: { editing in
            //                isEditing = editing
            //            }
            //            .frame(width: 200)
            //            .foregroundColor(.white)
            HStack(spacing: 32){
                Button {
                    participants -= 1
                    participantsList.listeParticipants.removeLast()
                } label: {
                    Image(systemName: "minus")
                        .padding(.horizontal, 16)
                        .frame(height: 44)
                        .background(.ultraThinMaterial)
                        .foregroundColor(.white)
                        .cornerRadius(4)
                }
                
                Text("\(Int(participants))")
                    .foregroundColor(isEditing ? .black : .white)
                
                Button {
                    participants += 1
                    
                    participantsList.listeParticipants.append("Joueur \(Int(participants))")
                } label: {
                    Image(systemName: "plus")
                        .padding(.horizontal, 16)
                        .frame(height: 44)
                        .background(.ultraThinMaterial)
                        .foregroundColor(.white)
                        .cornerRadius(4)
                }
                
            }
            
            
            FormulairePsedos(participants: $participants)
            
        }
    }
}

struct ListeUtilisateurds_Previews: PreviewProvider {
    static var previews: some View {
        ListeUtilisateurds()
            .environmentObject(ParticipantsList())
    }
}
