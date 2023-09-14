//
//  CarteSansNoms.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 14/09/2023.
//

import SwiftUI

struct CarteSansNoms: View {
    
    var carte : Card
    var width: CGFloat = UIScreen.main.bounds.width - 20
    var height: CGFloat = UIScreen.main.bounds.height - 130
    
    @Binding var currentCardIndex : Int
    
    @EnvironmentObject var participantsList: ParticipantsList
    
    @Binding var popUp : Bool
    
    var body: some View {
 
        VStack {
            Spacer()
            

            
            VStack {
        
                    
                HStack {
                    Spacer()
                    Button {
                        withAnimation(.easeInOut(duration: 0.7)) {
                            popUp.toggle()
                        }
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color("gold"))
                            .font(.system(size: 30))
                            .padding()
                }
                }
                .offset(x: 0, y: 0)
                                
                if carte.label == .jamais  {
                    
                    Text(" J'ai déjà...")
                        .neonderhrawFont(size: 52)
                        .foregroundColor(Color("gold"))
                        .shadow(color: Color("goldy"), radius: 6)
                        .frame(height: 40)
                        .padding(.top, 50)                
                    
                } else if carte.label == .deja {
                    
                    Text(" Je n'ai jamais...")
                        .neonderhrawFont(size: 52)
                        .foregroundColor(Color("gold"))
                        .shadow(color: Color("goldy"), radius: 6)
                        .frame(height: 40)
                        .padding(.top, 50)
                    
                } else if carte.label == .bois  {
                    
                    Text("\(participantsList.listeParticipants.randomElement() ?? "")...")              .neonderhrawFont(size: 60)
                        .foregroundColor(Color("gold"))
                        .shadow(color: Color("goldy"), radius: 6)
                        .frame(height: 80)

                    
                } else if carte.label == .vote || carte.label == .all || carte.label == .master {
                    
                    Text("\(carte.label.rawValue) ...")
                        .font(.title)
                        .fontWeight(.thin)
                        .foregroundColor(.white)
                        .frame(height: 80)

                    
                } else if carte.label == .alliance {
                    
                    HStack {
                        Text("\(participantsList.listeParticipants.randomElement() ?? "")")
                            .neonderhrawFont(size: 60)
                            .foregroundColor(Color("gold"))
                            .shadow(color: Color("goldy"), radius: 6)
                            .frame(height: 40)

                        Spacer()
                    }
                    .padding(.leading, 20)
                    
                    Text("\(carte.label.rawValue) ...")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .frame(height: 40)

                    
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
                Spacer()
         
                HStack {
                    Text(carte.categorie.nom)
                            .foregroundColor(Color("goldy"))
                            .fontWeight(.thin)
                        .font(.system(size: 16))
                        .padding(10)
                        .background(Color("purpleopacity"))
                    .cornerRadius(20)
                    Spacer()
                }
            }
            .padding()
            .frame(width: width, height: 450)
            .background(Color("purpleopacity"))
            .cornerRadius(24)
            
            
            Spacer()
            
        }
        
        
        
        
    }
}


struct CarteSansNoms_Previews: PreviewProvider {
    static var previews: some View {
        CarteSansNoms(carte: cartes[1], currentCardIndex: .constant(0), popUp: .constant(false))
            .environmentObject(ParticipantsList())
    }
}
