//
//  CoinView.swift
//  GlassJar
//
//  Created by Dmitry Kononchuk on 31.07.2021.
//  Copyright © 2021 Dmitry Kononchuk. All rights reserved.
//

import SwiftUI

struct CoinView: View {
    // MARK: - Public Properties
    let width: CGFloat
    let height: CGFloat
    
    // MARK: - body Property
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .fill(
                        RadialGradient(
                            gradient: Gradient(colors: [.yellow, .black]),
                            center: UnitPoint(x: 0.65, y: 0.3),
                            startRadius: geometry.size.width * 0.1,
                            endRadius: geometry.size.width * 2
                        )
                    )
                    .overlay(Circle()
                                .stroke(
                                    Color.black.opacity(0.8),
                                    style: StrokeStyle(dash: [2])
                                )
                    )
            }
        }
        .frame(width: width, height: height)
    }
}

// MARK: - Preview Provider
struct CoinView_Previews: PreviewProvider {
    static var previews: some View {
        CoinView(width: 300, height: 300)
    }
}
