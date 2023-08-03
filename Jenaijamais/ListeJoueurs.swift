//
//  ListeJoueurs.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 03/08/2023.
//

import SwiftUI

class ParticipantsList: ObservableObject {
    @Published var listeParticipants: [String] = ["Joueur 1", "Joueur 2", "Joueur 3"]
}

struct ListeJoueurs: View {
    
    @EnvironmentObject var participantsList: ParticipantsList
    
    
    @State var participants = 3.00
    @State var selection = 0
    
    @State private var isEditing = false
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<$participantsList.listeParticipants.count, id: \.self) { index in
                    VStack {
                        TextField("Pseudo joueur \(index + 1)", text: $participantsList.listeParticipants[index])
                            .padding(.leading, 20)
                            .padding(6)
                            .frame(width: 250)
                            .foregroundColor(.white)
                        
                        Divider().frame(width: 230)
                            .background(Color("colorbottom"))
                    }
                }
                .background(Color("purpleopacity"))
                .cornerRadius(12)
                .padding(12)
            }
            HStack(spacing: 32){
                Button {
                    if participants > 3 {
                        participants -= 1
                        participantsList.listeParticipants.removeLast()
                    }
                } label: {
                    Image(systemName: "minus")
                        .padding(.horizontal, 16)
                        .frame(width: 32, height: 32)
                        .background(.ultraThinMaterial)
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }
                
                Text("\(Int(participants))")
                    .foregroundColor(isEditing ? .black : .white)
                
                Button {
                    if participants < 20 {
                        participants += 1
                        
                        participantsList.listeParticipants.append("Joueur \(Int(participants))")
                    }
                } label: {
                    Image(systemName: "plus")
                        .padding(.horizontal, 16)
                        .frame(width: 32, height: 32)
                        .background(.ultraThinMaterial)
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }
            }
        }
    }
}

struct ListeJoueurs_Previews: PreviewProvider {
    static var previews: some View {
        ListeJoueurs()
            .environmentObject(ParticipantsList())
    }
}
