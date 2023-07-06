//
//  BoutonNext.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 28/06/2023.
//

import SwiftUI

struct BoutonNext: View {
    
    var body: some View {
        NavigationLink {
                Cartes(carte: cartes.randomElement() ?? cartes[0])
        } label: {
            VStack {
                Image(systemName: "arrow.forward.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
//                Text("Prochaine")
            }
        }
        .padding()

    }
}

struct BoutonNext_Previews: PreviewProvider {
    static var previews: some View {
        BoutonNext()
    }
}
