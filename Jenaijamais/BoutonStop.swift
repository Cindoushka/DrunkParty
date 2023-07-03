//
//  BoutonStop.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 28/06/2023.
//

import SwiftUI

struct BoutonStop: View {
    var body: some View {
        NavigationLink {
            Stop()
        } label: {
            VStack {
                Image(systemName: "stop.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                Text("J'arrête là")
            }
        }    }
}

struct BoutonStop_Previews: PreviewProvider {
    static var previews: some View {
        BoutonStop()
    }
}
