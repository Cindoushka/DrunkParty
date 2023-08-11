//
//  BoutonDejaFait.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 03/07/2023.
//

import SwiftUI

struct NeonAnimation: View {
    var body: some View {
        
        NavigationLink {
            JaiDeja()
        } label: {
            ZStack {
                VStack {
                    Text("Neon")
                        .neonderhrawFont(size: 100)
                        .font(.system(size: 100))
                        .foregroundColor(Color("gold"))
                        .glow()
    //                Text("J'ai déjà")
                }
            .padding(40)
            }
            .background(Color("colorbottom"))
            .ignoresSafeArea()
        }
        
    }
}

struct Glow: ViewModifier {
    
    @State private var throb = false
    
    func body(content: Content) -> some View {
        ZStack {
            content
                .shadow(color: Color("goldy"), radius: 20)
                .blur(radius: throb ? 50 : 10)
                .animation(.easeInOut(duration: 0.4).repeatCount(100), value: throb)
                .onAppear {
                    throb.toggle()
                }
            content

        }
    }
    
}

extension View {
    func glow() -> some View {
        modifier(Glow())
    }
}
struct NeonAnimation_Previews: PreviewProvider {
    static var previews: some View {
        NeonAnimation()
    }
}
