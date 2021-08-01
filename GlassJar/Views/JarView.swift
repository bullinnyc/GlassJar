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
            let middleX = size / 2 // 150
            let size270 = size * 0.9 // 270
            let size210 = size * 0.7 // 210
            let size70 = size210 / 3 // 70
            let size230 = size - size70 // 230
            let size90 = size * 0.3 // 90
            let size240 = size * 0.8 // 240
            let size50 = size / 6 // 50
            let size30 = size * 0.1 // 30
            let size60 = size * 0.2 // 60
            let size10 = size240 - size230 // 10
            let size40 = size50 - size10 // 40
            let size110 = middleX - size40 // 110
            let size140 = middleX - size10 // 140
            let size190 = size240 - size50 // 190
            let size100 = middleX - size50 // 100
            let size120 = size * 0.4 // 120
            let size180 = size * 0.6 // 180
            let size280 = size270 + size10 // 280
            let size200 = size210 - size10 // 200
            let size215 = size200 + (size30 / 2) // 215
            let size250 = size200 + size50 // 250
            let size170 = size200 - size30 // 170
            let size220 = middleX + size70 // 220
            let size20 = size50 - size30 // 20
            let size25 = size50 / 2 // 25
            
            ZStack(alignment: .bottom) {
                // Coins in jar
                ZStack {
                    CoinView(width: size30, height: size30)
                        .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                        .offset(x: 0, y: -(size20))
                    
                    CoinView(width: size30, height: size30)
                        .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                        .offset(x: size20, y: -(size25))
                    
                    CoinView(width: size30, height: size30)
                        .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                        .offset(x: -(size30), y: -(size50))
                    
                    CoinView(width: size30, height: size30)
                        .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                        .offset(x: size30, y: -(size50))
                }
                
                // Coins from jar
                ZStack {
                    CoinView(width: size30, height: size30)
                        .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                        .offset(x: size30, y: size40)
                    
                    CoinView(width: size30, height: size30)
                        .rotation3DEffect(.degrees(60), axis: (x: 100, y: 10, z: 0))
                        .offset(x: size50, y: size30)
                }
                .hidden(isHideExtraCoins, remove: true)
                
                // Body jar
                Group {
                    ZStack {
                        Path { path in
                            path.move(to: CGPoint(x: size70, y: size270))
                            path.addQuadCurve(
                                to: CGPoint(x: size230, y: size270),
                                control: CGPoint(x: middleX, y: size)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: size230, y: size70),
                                control: CGPoint(x: size240, y: middleX)
                            )
                            path.addLine(to: CGPoint(x: size210, y: size50))
                            path.addLine(to: CGPoint(x: size210, y: size30))
                            path.addQuadCurve(
                                to: CGPoint(x: size90, y: size30),
                                control: CGPoint(x: middleX, y: size50)
                            )
                            path.addLine(to: CGPoint(x: size90, y: size50))
                            path.addLine(to: CGPoint(x: size70, y: size70))
                            path.addQuadCurve(
                                to: CGPoint(x: size70, y: size270),
                                control: CGPoint(x: size60, y: middleX)
                            )
                        }
                        .stroke(Color.black, lineWidth: 1)
                    }
                    
                    ZStack {
                        Path { path in
                            path.move(to: CGPoint(x: size70, y: size270))
                            path.addQuadCurve(
                                to: CGPoint(x: size230, y: size270),
                                control: CGPoint(x: middleX, y: size + size10)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: size230, y: size70),
                                control: CGPoint(x: size240, y: middleX)
                            )
                            path.addLine(to: CGPoint(x: size210, y: size50))
                            path.addLine(to: CGPoint(x: size210, y: size30))
                            path.addQuadCurve(
                                to: CGPoint(x: size90, y: size30),
                                control: CGPoint(x: middleX, y: size50)
                            )
                            path.addLine(to: CGPoint(x: size90, y: size50))
                            path.addLine(to: CGPoint(x: size70, y: size70))
                            path.addQuadCurve(
                                to: CGPoint(x: size70, y: size270),
                                control: CGPoint(x: size60, y: middleX)
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
                            path.move(to: CGPoint(x: size90, y: size30))
                            path.addQuadCurve(
                                to: CGPoint(x: size210, y: size30),
                                control: CGPoint(x: middleX, y: 0)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: size90, y: size30),
                                control: CGPoint(x: middleX, y: size50)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: size90, y: size30),
                                control: CGPoint(x: middleX, y: 0)
                            )
                        }
                        .stroke(Color.black, lineWidth: 2)
                    }
                    
                    ZStack {
                        Path { path in
                            path.move(to: CGPoint(x: size90, y: size30))
                            path.addQuadCurve(
                                to: CGPoint(x: size210, y: size30),
                                control: CGPoint(x: middleX, y: 0)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: size90, y: size30),
                                control: CGPoint(x: middleX, y: size50)
                            )
                            path.addQuadCurve(
                                to: CGPoint(x: size90, y: size30),
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
                        path.move(to: CGPoint(x: size90, y: size40))
                        path.addQuadCurve(
                            to: CGPoint(x: size210, y: size40),
                            control: CGPoint(x: middleX, y: size60)
                        )
                    }
                    .stroke(Color.black, lineWidth: 4)
                }
                .opacity(0.8)
                
                // Line jar
                ZStack {
                    Path { path in
                        path.move(to: CGPoint(x: size90, y: size140))
                        path.addLine(to: CGPoint(x: size90, y: size190))
                        path.addQuadCurve(
                            to: CGPoint(x: size110, y: size210),
                            control: CGPoint(x: size100, y: size210)
                        )
                        
                        path.move(to: CGPoint(x: size120, y: size270))
                        path.addQuadCurve(
                            to: CGPoint(x: size200, y: size270),
                            control: CGPoint(x: size180, y: size280)
                        )
                        
                        path.move(to: CGPoint(x: size215, y: size110))
                        path.addQuadCurve(
                            to: CGPoint(x: size200, y: size70),
                            control: CGPoint(x: size210, y: size70)
                        )
                        
                        path.move(to: CGPoint(x: size70, y: size250))
                        path.addQuadCurve(
                            to: CGPoint(x: size170, y: size220),
                            control: CGPoint(x: size100, y: size210)
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
