//
//  JarView.swift
//  GlassJar
//
//  Created by Dmitry Kononchuk on 31.07.2021.
//  Copyright © 2021 Dmitry Kononchuk. All rights reserved.
//

import SwiftUI

struct JarView: View {
    // MARK: - Public properties
    let width: CGFloat // 300
    let height: CGFloat // 300
    let isHideExtraCoins: Bool
    
    // MARK: - body Property
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height) // 300
            let coordinate9 = size * 0.03 // 9
            let coordinate21 = size * 0.07 // 21
            let coordinate24 = size * 0.08 // 24
            let coordinate30 = size * 0.1 // 30
            let coordinate39 = size * 0.13 // 39
            let coordinate51 = size * 0.17 // 51
            let coordinate60 = size * 0.2 // 60
            let coordinate69 = size * 0.23 // 69
            let coordinate90 = size * 0.3 // 90
            let coordinate99 = size * 0.33 // 99
            let coordinate111 = size * 0.37 // 111
            let coordinate120 = size * 0.4 // 120
            let coordinate141 = size * 0.47 // 141
            let middleX = size * 0.5 // 150
            let coordinate171 = size * 0.57 // 171
            let coordinate180 = size * 0.6 // 180
            let coordinate189 = size * 0.63 // 189
            let coordinate201 = size * 0.67 // 201
            let coordinate210 = size * 0.7 // 210
            let coordinate216 = size * 0.72 // 216
            let coordinate219 = size * 0.73 // 219
            let coordinate231 = size * 0.77 // 231
            let coordinate240 = size * 0.8 // 240
            let coordinate249 = size * 0.83 // 249
            let coordinate270 = size * 0.9 // 270
            let coordinate279 = size * 0.93 // 279
            
            ZStack(alignment: .bottom) {
                // Coins in jar
                ZStack {
                    CoinView(width: coordinate30, height: coordinate30)
                        .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                        .offset(x: 0, y: -(coordinate21))
                    
                    CoinView(width: coordinate30, height: coordinate30)
                        .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                        .offset(x: coordinate21, y: -(coordinate24))
                    
                    CoinView(width: coordinate30, height: coordinate30)
                        .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                        .offset(x: -(coordinate30), y: -(coordinate51))
                    
                    CoinView(width: coordinate30, height: coordinate30)
                        .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                        .offset(x: coordinate30, y: -(coordinate51))
                }
                
                // Coins from jar
                ZStack {
                    CoinView(width: coordinate30, height: coordinate30)
                        .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                        .offset(x: coordinate30, y: coordinate39)
                    
                    CoinView(width: coordinate30, height: coordinate30)
                        .rotation3DEffect(.degrees(60), axis: (x: 100, y: 10, z: 0))
                        .offset(x: coordinate51, y: coordinate30)
                }
                .hidden(isHideExtraCoins, remove: true)
                
                // Body jar
                Group {
                    ZStack {
                        Path { path in
                            path.move(to: CGPoint(x: coordinate69, y: coordinate270))
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate231, y: coordinate270),
                                control: CGPoint(x: middleX, y: size)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate231, y: coordinate69),
                                control: CGPoint(x: coordinate240, y: middleX)
                            )
                            path.addLine(to: CGPoint(x: coordinate210, y: coordinate51))
                            path.addLine(to: CGPoint(x: coordinate210, y: coordinate30))
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate90, y: coordinate30),
                                control: CGPoint(x: middleX, y: coordinate51)
                            )
                            path.addLine(to: CGPoint(x: coordinate90, y: coordinate51))
                            path.addLine(to: CGPoint(x: coordinate69, y: coordinate69))
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate69, y: coordinate270),
                                control: CGPoint(x: coordinate60, y: middleX)
                            )
                        }
                        .stroke(Color.black, lineWidth: 1)
                    }
                    
                    ZStack {
                        Path { path in
                            path.move(to: CGPoint(x: coordinate69, y: coordinate270))
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate231, y: coordinate270),
                                control: CGPoint(x: middleX, y: size + coordinate9)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate231, y: coordinate69),
                                control: CGPoint(x: coordinate240, y: middleX)
                            )
                            path.addLine(to: CGPoint(x: coordinate210, y: coordinate51))
                            path.addLine(to: CGPoint(x: coordinate210, y: coordinate30))
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate90, y: coordinate30),
                                control: CGPoint(x: middleX, y: coordinate51)
                            )
                            path.addLine(to: CGPoint(x: coordinate90, y: coordinate51))
                            path.addLine(to: CGPoint(x: coordinate69, y: coordinate69))
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate69, y: coordinate270),
                                control: CGPoint(x: coordinate60, y: middleX)
                            )
                        }
                        .fill(
                            RadialGradient(
                                gradient: Gradient(colors: [.blue, .black]),
                                center: UnitPoint(x: 0.65, y: 0.3),
                                startRadius: geometry.size.width * 0.1,
                                endRadius: geometry.size.width * 1.5
                            )
                        )
                    }
                }
                .opacity(0.6)
                
                // Up jar
                Group {
                    ZStack {
                        Path { path in
                            path.move(to: CGPoint(x: coordinate90, y: coordinate30))
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate210, y: coordinate30),
                                control: CGPoint(x: middleX, y: 0)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate90, y: coordinate30),
                                control: CGPoint(x: middleX, y: coordinate51)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate90, y: coordinate30),
                                control: CGPoint(x: middleX, y: 0)
                            )
                        }
                        .stroke(Color.black, lineWidth: 2)
                    }
                    
                    ZStack {
                        Path { path in
                            path.move(to: CGPoint(x: coordinate90, y: coordinate30))
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate210, y: coordinate30),
                                control: CGPoint(x: middleX, y: 0)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate90, y: coordinate30),
                                control: CGPoint(x: middleX, y: coordinate51)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: coordinate90, y: coordinate30),
                                control: CGPoint(x: middleX, y: 0)
                            )
                        }
                        .fill(
                            RadialGradient(
                                gradient: Gradient(colors: [.blue.opacity(0.5), .black.opacity(0.5)]),
                                center: UnitPoint(x: 0.65, y: 0.3),
                                startRadius: geometry.size.width * 0.1,
                                endRadius: geometry.size.width * 1.5
                            )
                        )
                    }
                }
                .opacity(0.8)
                
                // Bezel
                ZStack {
                    Path { path in
                        path.move(to: CGPoint(x: coordinate90, y: coordinate39))
                        path.addQuadCurve(
                            to: CGPoint(x: coordinate210, y: coordinate39),
                            control: CGPoint(x: middleX, y: coordinate60)
                        )
                    }
                    .stroke(Color.black, lineWidth: 4)
                }
                .opacity(0.8)
                
                // Line jar
                ZStack {
                    Path { path in
                        path.move(to: CGPoint(x: coordinate90, y: coordinate141))
                        path.addLine(to: CGPoint(x: coordinate90, y: coordinate189))
                        path.addQuadCurve(
                            to: CGPoint(x: coordinate111, y: coordinate210),
                            control: CGPoint(x: coordinate99, y: coordinate210)
                        )
                        
                        path.move(to: CGPoint(x: coordinate120, y: coordinate270))
                        path.addQuadCurve(
                            to: CGPoint(x: coordinate201, y: coordinate270),
                            control: CGPoint(x: coordinate180, y: coordinate279)
                        )
                        
                        path.move(to: CGPoint(x: coordinate216, y: coordinate111))
                        path.addQuadCurve(
                            to: CGPoint(x: coordinate201, y: coordinate69),
                            control: CGPoint(x: coordinate210, y: coordinate69)
                        )
                        
                        path.move(to: CGPoint(x: coordinate69, y: coordinate249))
                        path.addQuadCurve(
                            to: CGPoint(x: coordinate171, y: coordinate219),
                            control: CGPoint(x: coordinate99, y: coordinate210)
                        )
                    }
                    .stroke(Color.black, lineWidth: 0.5)
                }
                .opacity(0.6)
            }
        }
        .frame(width: width, height: height)
    }
}

// MARK: - Preview Provider
struct Jar_Previews: PreviewProvider {
    static var previews: some View {
        JarView(width: 300, height: 300, isHideExtraCoins: false)
    }
}
