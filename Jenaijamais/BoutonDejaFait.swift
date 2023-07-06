//
//  BoutonDejaFait.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 03/07/2023.
//

import SwiftUI

struct BoutonDejaFait: View {
    var body: some View {
        
        NavigationLink {
            JaiDeja()
        } label: {
            VStack {
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
//                Text("J'ai déjà")
            }
            .padding()
        }
        
    }
}
struct BoutonDejaFait_Previews: PreviewProvider {
    static var previews: some View {
        BoutonDejaFait()
    }
}
