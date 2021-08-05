//
//  ContentView.swift
//  GlassJar
//
//  Created by Dmitry Kononchuk on 30.07.2021.
//  Copyright © 2021 Dmitry Kononchuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property Wrappers
    @State private var isShowCoinAnimation = false
    
    // MARK: - body Property
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Group {
                    JarView(
                        width: geometry.size.width * 0.7,
                        height: geometry.size.width * 0.7,
                        isHideExtraCoins: false
                    )
                    .shadow(color: .gray, radius: 10, x: 20, y: -5)
                    
                    Group {
                        if isShowCoinAnimation {
                            CoinView(
                                width: geometry.size.width * 0.08,
                                height: geometry.size.width * 0.08
                            )
                            .transition(.coinToss(fall: geometry.size.width * 0.46))
                        }
                    }
                    .offset(y: geometry.size.width * -0.32)
                }
                .padding()
                
                VStack {
                    Spacer()
                    Button(action: buttonAction){
                        Text("START")
                    }
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
    
    // MARK: - Private Methods
    private func buttonAction() {
        withAnimation {
            isShowCoinAnimation.toggle()
        }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                withAnimation {
                    isShowCoinAnimation.toggle()
                }
            }
    }
}

// MARK: - Preview Provider
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
