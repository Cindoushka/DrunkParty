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
                                Text("Alann bois... ")
                                    .font(.system(size:40))
                                    .foregroundColor(Color("colorcard"))
                                    .multilineTextAlignment(.leading)
                                    .padding()
                                Spacer()

                            }
                            .background(Color("gold"))
                            
    //                        Text("bois si tu as déjà...")
    //                            .font(.system(size:40))
    //                            .fontWeight(.thin)
    //                            .foregroundColor(.white)
                            
                            Text("Si tu as déjà vomi par terre")
                                .font(.system(size:40))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding([.horizontal, .bottom], 40)
                                .multilineTextAlignment(.center)
                                .frame(height: 200)

                        }
                        .frame(width: width - 30)
                        .background(Color("purpleopacity"))
                    .cornerRadius(24)
                        
                        HStack {
                            Spacer()
                            Text("Alann: 10 points")
                                .padding(8)
                                .background(Color("goldy"))
                                .cornerRadius(12)
                                .opacity(0.7)
                        }
                        .padding(.trailing, 8)
                        .padding(.top, 300)
                    }
                    


                    Spacer()
                    
                    
                    HStack {
                        
                        BoutonStop()
                        
                        Spacer()
                        
                        BoutonNext()
                        
                    }
                    .padding(50)
                    
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
