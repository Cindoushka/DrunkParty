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
    
    @Binding var currentIndex: Int
    
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
                        
                        PetitesCartes(carte: carte, currentIndex: $currentIndex)

                         Spacer()
                        
                        HStack {
                            
                            BoutonStop()
                            
                            Spacer()
                            
                            BoutonNext(carte: carte)
                            
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
        Cartes(carte: cartes[3], currentIndex: .constant(0))
            .environmentObject(ParticipantsList())

    }
}
