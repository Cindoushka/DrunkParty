//
//  ChoixThemes.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 04/08/2023.
//

import SwiftUI

struct ChoixThemes: View {
    
    var width: CGFloat = UIScreen.main.bounds.width - 20

    
    var body: some View {
        ZStack {
            
            VStack {
                Text("Modes")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .padding(.top, 60)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(categories) { categorie in
                        NavigationLink(destination: {
                            Carte(cartesCategorie: (filterCards(categorie: categorie)), popUp: .constant(false))
                        }, label: {
                            HStack(alignment: .top, spacing: 10) {
                                Image(categorie.image)
                                    .resizable()
                                    .frame(width: 110, height: 110)
                                    .scaledToFit()
                                
                                VStack(alignment: .leading) {
                                    Text(categorie.nom)
                                        .font(.system(size:24))
                                        .fontWeight(.thin)
                                    
                                    Text(categorie.description)
                                        .font(.system(size:14))
                                        .fontWeight(.thin)
                                        .multilineTextAlignment(.leading)
                                        .padding(.trailing, 10)
                                }
                                .frame(height: 100)
                            }
                        })
                        Divider()
                    }
                }
                .frame(width: width)
                .background(Color("opacitybg"))
                .cornerRadius(12)
                .padding(.bottom, 50)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(
                LinearGradient(colors: [Color("colorbottom"), Color("colorcard")], startPoint: .topLeading, endPoint: .bottomTrailing))
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
}

struct ChoixThemes_Previews: PreviewProvider {
    static var previews: some View {
        ChoixThemes()
    }
}
