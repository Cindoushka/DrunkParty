//
//  BoutonModes.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 11/08/2023.
//

import SwiftUI

struct BoutonModes: View {
    var body: some View {
        NavigationLink {
            ChoixThemes()
        } label: {
            VStack {
                Image(systemName: "theatermask.and.paintbrush.fill")
                    .font(.system(size: 54))
                Text("Oui")
                    .eduSAFont(weight: .semibold, size: 24)
            }
            .foregroundColor(Color("gold"))
        }
        .padding()
    }
}

struct BoutonModes_Previews: PreviewProvider {
    static var previews: some View {
        BoutonModes()
    }
}
