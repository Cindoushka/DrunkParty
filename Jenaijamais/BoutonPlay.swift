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
            Cartes(carte: cartes.randomElement()!)
        } label: {
            VStack {
                Image(systemName: "play.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                    .shadow(radius: 6)
            }
        }
    }
}

struct BoutonPlay_Previews: PreviewProvider {
    static var previews: some View {
        BoutonPlay()
    }
}
