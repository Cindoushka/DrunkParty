//
//  BoutonsJamais.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 27/06/2023.
//

import SwiftUI

struct BoutonsJamais: View {
    var body: some View {
        NavigationLink {
            withAnimation{
                Jamais()
            }
        } label: {
            VStack{
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                Text("Je n'ai jamais")
            }

        }
        .padding()

        
    }
}

struct BoutonsJamais_Previews: PreviewProvider {
    static var previews: some View {
        BoutonsJamais()
    }
}
