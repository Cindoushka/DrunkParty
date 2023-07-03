//
//  FormulairePsedos.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 27/06/2023.
//

import SwiftUI

class ParticipantsList: ObservableObject {
    @Published var listeParticipants: [String] = []
}

struct FormulairePsedos: View {
    
    @EnvironmentObject var participantsList: ParticipantsList

    @State var pseudos : String = ""
    
    @Binding var participants : Double
    
    @Binding var listeParticipants: [String]
        
    var body: some View {
        
        VStack {
            
            TabView {
                ForEach(0...(Int(participants) - 1), id: \.self) { index in
                    TextField("Pseudo joueur \(index + 1)", text: $participantsList.listeParticipants[index], onCommit: {
                                               listeParticipants.append(pseudos)
                                           })                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .padding()
                    .shadow(radius: 8)
                    .frame(width: 300)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 140)
//            .onAppear{
//            }
//            .onChange(of: participants) { newParticipantsValue in
//                print(newParticipantsValue)
//                listeParticipants.append("test")
//            }
                

        }
    }
}

struct FormulairePsedos_Previews: PreviewProvider {
    static var previews: some View {
        FormulairePsedos(participants: .constant(3.00), listeParticipants: .constant(["cindie", "mady"]))
    }
}
