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
                Spacer()
                Text("Mode")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack(spacing: 0) {
                    ForEach(categories) { categorie in
                        HStack(alignment: .top, spacing: 10) {
                            Image(categorie.image)
                                .resizable()
                                .frame(width: 130, height: 130)
                                .scaledToFit()
                            
                            VStack(alignment: .leading) {
                                Text(categorie.nom)
                                    .font(.title)
                                    .fontWeight(.thin)
                                
                                Text(categorie.description)
                                    .fontWeight(.thin)
                            }
                            .frame(width: width - 160, height: 130)
                        }
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
