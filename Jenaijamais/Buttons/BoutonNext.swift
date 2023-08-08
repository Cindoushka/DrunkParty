//
//  BoutonNext.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 28/06/2023.
//

import SwiftUI

struct BoutonNext: View {
    
    var carte : Card
    var body: some View {
        Button {

        } label: {
            VStack {
                Image(systemName: "arrow.forward.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color("gold"))
//                Text("Prochaine")
            }
        }
        .padding()

    }
}

struct BoutonNext_Previews: PreviewProvider {
    static var previews: some View {
        BoutonNext(carte: cartes[0])
    }
}
