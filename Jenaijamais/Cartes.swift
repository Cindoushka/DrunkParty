//
//  Cartes.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 26/06/2023.
//

import SwiftUI

struct Cartes: View {
    
    var carte : Cards
    var width: CGFloat = UIScreen.main.bounds.width - 60
    var height: CGFloat = UIScreen.main.bounds.height - 130
    
    @EnvironmentObject var participantsList: ParticipantsList
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                VStack {
                    VStack {
                                                
                        if carte.label == .jamais || carte.label == .deja {
                            
                            Text("\(participantsList.listeParticipants.randomElement() ?? "") \(carte.label.rawValue) ...")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)

                        } else if carte.label == .bois  {
                            
                            Text("\(participantsList.listeParticipants.randomElement() ?? "")...")                            .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                            
                        } else if carte.label == .vote || carte.label == .all || carte.label == .master {
                            
                            Text("\(carte.label.rawValue) ...")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                            
                        } else if carte.label == .alliance {
                            
                            Text("\(participantsList.listeParticipants.randomElement() ?? "") \(carte.label.rawValue) ...")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                            
                        }
                        
                        if carte.label == .bomba {
                            
                            Text(carte.textes)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .multilineTextAlignment(.center)
                                .frame(width: 360, height: 130)
                            
                        } else {
                            Text("... \(carte.textes)")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .multilineTextAlignment(.center)
                                .frame(width: 400, height: 100)
                        }
                        
                        
                        HStack {
                            
                            BoutonStop()
                            
                            Spacer()
                            
                            BoutonNext()
                            
                        }
                        .padding(.horizontal, 20)
                        
                    }
                    .frame(width: width, height: height)
                    .background(
                        LinearGradient(colors: [Color("colorbottom"), Color("colorcard")], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(24)
                }
                .frame(width: (width + 8), height: (height + 8))
                .background(
                    LinearGradient(colors: [Color("gold"), Color("goldy")], startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(28)
                .shadow(color: .gray, radius: 12)
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
            .environmentObject(ParticipantsList())

    }
}
