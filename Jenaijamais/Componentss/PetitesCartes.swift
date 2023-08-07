//
//  PetitesCartes.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 07/08/2023.
//

import SwiftUI

struct PetitesCartes: View {
    
    var carte : Cards
    var width: CGFloat = UIScreen.main.bounds.width - 20
    var height: CGFloat = UIScreen.main.bounds.height - 130
    
    @Binding var currentIndex : Int
    
    @EnvironmentObject var participantsList: ParticipantsList
    
    var body: some View {

        VStack {
            VStack {
                    if carte.label == .jamais || carte.label == .deja {
                        
                        HStack {
                            Text(" \(participantsList.listeParticipants.randomElement() ?? "") ")
                                .neonderhrawFont(size: 60)
                                .foregroundColor(Color("gold"))
                                .shadow(color: Color("goldy"), radius: 6)
                            
                            Spacer()
                        }
                        .padding(.leading, 20)
                        
                        Text("\(carte.label.rawValue) ...")
                            .eduSAFont(weight: .regular, size: 36)
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                        
                    } else if carte.label == .bois  {
                        
                        Text("\(participantsList.listeParticipants.randomElement() ?? "")...")              .neonderhrawFont(size: 60)
                            .foregroundColor(Color("gold"))
                            .shadow(color: Color("goldy"), radius: 6)
                        
                    } else if carte.label == .vote || carte.label == .all || carte.label == .master {
                        
                        Text("\(carte.label.rawValue) ...")
                            .font(.title)
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                        
                    } else if carte.label == .alliance {
                        
                    HStack {
                        Text("\(participantsList.listeParticipants.randomElement() ?? "")")
                            .neonderhrawFont(size: 60)
                            .foregroundColor(Color("gold"))
                            .shadow(color: Color("goldy"), radius: 6)
                        Spacer()
                    }
                    .padding(.leading, 20)
                    
                        Text("\(carte.label.rawValue) ...")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                    }
                    
                    if carte.label == .bomba {
                        
                        Text(carte.textes)
                            .font(.system(size:40))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .multilineTextAlignment(.center)
                            .frame(width: 370, height: 200)
                        
                    } else {
                        
                        Text("... \(carte.textes)")
                            .eduSAFont(weight: .medium, size: 40)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .multilineTextAlignment(.center)
                            .frame(width: 370, height: 200)
                    }
                }
                .padding()
                .frame(width: width, height: 400)
                .background(Color("purpleopacity"))
            .cornerRadius(24)
            
            Button {
                withAnimation {
                    currentIndex = (currentIndex + 1) % cartes.count

                   }
            } label: {
                VStack {
                    Image(systemName: "arrow.forward.circle.fill")
                        .font(.system(size: 60))
                        .foregroundColor(Color("gold"))
                }
            }
            .padding()
        }
        


        }
    }



struct PetitesCartes_Previews: PreviewProvider {
    static var previews: some View {
        PetitesCartes(carte: cartes[0], currentIndex: .constant(0))
            .environmentObject(ParticipantsList())
    }
}
