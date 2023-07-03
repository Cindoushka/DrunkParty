//
//  FormulairePsedos.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 27/06/2023.
//

import SwiftUI

class ParticipantsList: ObservableObject {
    @Published var listeParticipants: [String] = ["Joueur 1"]
}

struct FormulairePsedos: View {
    
    @EnvironmentObject var participantsList: ParticipantsList
    
    
    @Binding var participants : Double
    @State var selection = 0
    
    var body: some View {
        
        VStack {
            
            TabView(selection: $selection) {
                ForEach(0..<$participantsList.listeParticipants.count, id: \.self) { index in
                    VStack{
                        Text("Joueur \(index+1)")
                        TextField("Pseudo joueur \(index + 1)", text: $participantsList.listeParticipants[index])
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding()
                            .shadow(radius: 8)
                            .frame(width: 300)
                            .tag(index)
                    }
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 140)
            .overlay {
                HStack(spacing: 400){
                    Button {
                        withAnimation {
                            selection -= 1
                        }
                    } label: {
                        Image(systemName: "chevron.left")
                            .frame(width: 50, height: 50)
                            .background(.ultraThinMaterial)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                    .opacity(selection != 0 ? 1 : 0)
                    
                    
                    
                    Button {
                        withAnimation {
                            selection += 1
                        }
                    } label: {
                        Image(systemName: "chevron.right")
                            .frame(width: 50, height: 50)
                            .background(.ultraThinMaterial)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                    .opacity(selection != participantsList.listeParticipants.count-1 ? 1 : 0)
                    
                    
                }
            }
        }
    }
    
    struct FormulairePsedos_Previews: PreviewProvider {
        static var previews: some View {
            FormulairePsedos(participants: .constant(3.00))
                .environmentObject(ParticipantsList())
        }
    }
