//
//  JaiDeja.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 03/07/2023.
//

import SwiftUI

struct JaiDeja: View {
    
    var width: CGFloat = UIScreen.main.bounds.width
    var height: CGFloat = UIScreen.main.bounds.height

    var body: some View {
        NavigationView {
            ZStack {
                
                VStack {
                    
                    Text(" Drunk Party ")
                        .neonderhrawFont(size: 40)
                        .foregroundColor(Color("gold"))
                        .padding(.top, 44)
                        .glow()
                    
                    Spacer()

                    ZStack(alignment: .center) {
                        VStack(spacing: 40) {
                            HStack {
                                Text("Cindie")
                                    .eduSAFont(weight: .regular, size: 40)
                                    .fontWeight(.thin)
                                    .foregroundColor(Color("colorcard"))
                                Spacer()
                                
                                Image(systemName: "xmark")
                                    .font(.system(size: 24))

                            }
                            .padding(12)
                            .background(Color("gold"))
                            
    //                        Text("bois si tu as déjà...")
    //                            .font(.system(size:40))
    //                            .fontWeight(.thin)
    //                            .foregroundColor(.white)
                            
                            HStack {
                                Text("Bois si...")
                                    .eduSAFont(weight: .regular, size: 36)
                                    .foregroundColor(.white)
                                .frame(height: 10)
                                .padding(.leading, 20)
                                
//                                Spacer()
                            }
                            
                            Text("...tu as déjà vomi par terre")
                                .eduSAFont(weight: .bold, size: 40)
                                .foregroundColor(.white)
                                .padding([.horizontal, .bottom], 40)
                                .multilineTextAlignment(.center)
                                .frame(height: 150)

                        }
                        .frame(width: width - 30)
                        .background(Color("purpleopacity"))
                    .cornerRadius(24)
                        
                        HStack {
                            Spacer()
                            Text("Cindie: 10 points")
                                .eduSAFont(weight: .regular, size: 20)
                                .padding(8)
                                .background(Color("goldy"))
                                .cornerRadius(12)
                                .opacity(0.7)
                        }
                        .padding(.trailing, 8)
                        .padding(.top, 320)
                    }
                    


                    Spacer()
                    
                    
                    HStack(spacing: 20) {
                        
                        Text(" J'ai déjà ")
                            .padding()
                            .background(Color("goldopacity"))
                            .cornerRadius(24)
                            
                        Text(" Je n'ai jamais ")
                            .padding()
                            .background(Color("goldopacity"))
                            .cornerRadius(24)

                    }
                    .eduSAFont(weight: .semibold, size: 24)                    .foregroundColor(Color("colorcard"))
                    .padding(.vertical, 80)
                    
                }
                .frame(width: width, height: height)
                .background(
                    LinearGradient(colors: [Color("colorbottom"), Color("colorcard")], startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(24)
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
        .navigationBarHidden(true)
    }
}


struct JaiDeja_Previews: PreviewProvider {
    static var previews: some View {
        JaiDeja()
    }
}
