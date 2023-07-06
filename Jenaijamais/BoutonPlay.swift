//
//  BoutonPlay.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 28/06/2023.
//

import SwiftUI

struct BoutonPlay: View {
    var body: some View {
        
        NavigationLink {
            Cartes(carte: cartes.randomElement() ?? cartes[0])
        } label: {
            VStack {
                Image(systemName: "play.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color("gold"))
                    .shadow(radius: 6)
            }
            .padding(.bottom, 12)
        }
    }
}

struct BoutonPlay_Previews: PreviewProvider {
    static var previews: some View {
        BoutonPlay()
    }
}
