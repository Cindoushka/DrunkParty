//
//  Cartes.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 26/06/2023.
//

import SwiftUI

struct Cartes: View {
    
    var carte : Cards
    var width: CGFloat = UIScreen.main.bounds.width - 20
    var height: CGFloat = UIScreen.main.bounds.height - 130
    
    @EnvironmentObject var participantsList: ParticipantsList
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                VStack {
                    
                    VStack {

                        Text(" Drunk Party ")
                            .neonderhrawFont(size: 40)
                            .foregroundColor(Color("gold"))
                            .padding(.top, 44)
                            .glow()
                        
                        Spacer()
                        
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
                                    .font(.system(size:40))
                                    .fontWeight(.thin)
                                    .foregroundColor(.white)
                                
                            } else if carte.label == .bois  {
                                
                                Text("\(participantsList.listeParticipants.randomElement() ?? "")...")              .neonderhrawFont(size: 60)
                                    .foregroundColor(Color("gold"))
                                    .shadow(color: Color("goldy"), radius: 6)
                                
                            } else if carte.label == .vote || carte.label == .all || carte.label == .master {
                                
                                Text("\(carte.label.rawValue) ...")
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
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
                                    .frame(width: 350, height: 150)
                                
                            } else {
                                
                                Text("... \(carte.textes)")
                                    .font(.system(size:40))
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 20)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 350, height: 150)
                            }
                        }
                        .padding()
                        .frame(width: width, height: 400)
                        .background(Color("purpleopacity"))
                        .cornerRadius(24)

                         Spacer()
                        
                        HStack {
                            
                            BoutonStop()
                            
                            Spacer()
                            
                            BoutonNext()
                            
                        }
                        .padding(50)
                        
                    }
            
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .background(
                        LinearGradient(colors: [Color("colorbottom"), Color("colorcard")], startPoint: .topLeading, endPoint: .bottomTrailing))
//                    .cornerRadius(24)
                }
//                .frame(width: (width + 8), height: (height + 8))
//                .background(
//                    LinearGradient(colors: [Color("gold"), Color("goldy")], startPoint: .topLeading, endPoint: .bottomTrailing))
//                .cornerRadius(28)
//                .shadow(color: .gray, radius: 12)
            }
            .ignoresSafeArea()
            .background {
                Image("baroque")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 20)
                    .ignoresSafeArea()

            }
            
        }
        .navigationBarHidden(true)
    }
}

struct Cartes_Previews: PreviewProvider {
    static var previews: some View {
        Cartes(carte: cartes[9])
            .environmentObject(ParticipantsList())

    }
}
