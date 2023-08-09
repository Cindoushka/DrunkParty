//
//  Cartes.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 26/06/2023.
//

import SwiftUI

struct Carte: View {
    
    var cartesCategorie: [Card]
    var width: CGFloat = UIScreen.main.bounds.width - 20
    var height: CGFloat = UIScreen.main.bounds.height - 130
    
    @EnvironmentObject var participantsList: ParticipantsList
    
    @State var currentCardIndex: Int = 0
    
    @State var popUp : Bool = false
    
    
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
                        
                        PetiteCarte(carte: cartesCategorie[currentCardIndex], currentCardIndex: $currentCardIndex, popUp: $popUp)
                        
                        Text("\(currentCardIndex + 1) / \(cartesCategorie.count)")
                            .padding(8)
                            .background(Color("goldopacity"))
                            .cornerRadius(12)
                            .offset(y:-65)
                        
                        Spacer()
                        
                        Button {
                            withAnimation(.linear(duration: 0.5)) {
                                if currentCardIndex < cartesCategorie.count - 1 {
                                    currentCardIndex += 1
                                } else {
                                    withAnimation(.easeInOut(duration: 0.7)) {
                                        
                                        popUp = true
                                    }
                                }
                            }
                        } label: {
                            VStack {
                                Image(systemName: "arrow.forward.circle.fill")
                                    .font(.system(size: 60))
                                    .foregroundColor(Color("gold"))
                            }
                        }
                        .padding(50)
                        //                        HStack {
                        //
                        //                            BoutonStop()
                        //
                        //                            Spacer()
                        //
                        //                            BoutonNext(carte: carte)
                        //
                        //                        }
                        //                        .padding(50)
                        //
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
            .overlay(
                ZStack{
                    if popUp == true {
                        
                            Stop(popUp: $popUp)
                            
                                .shadow(radius: 10)
                        
                        
                    }
                }
                    .zIndex(999)
                    .transition(.opacity)
            )
            
            
        }
        .navigationBarHidden(true)
    }
}

struct Carte_Previews: PreviewProvider {
    static var previews: some View {
        Carte(cartesCategorie: cartes, currentCardIndex: 0, popUp: false)
            .environmentObject(ParticipantsList())
        
    }
}
