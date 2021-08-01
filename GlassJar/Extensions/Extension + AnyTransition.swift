//
//  Extension + AnyTransition.swift
//  GlassJar
//
//  Created by Dmitry Kononchuk on 01.08.2021.
//  Copyright © 2021 Dmitry Kononchuk. All rights reserved.
//

import SwiftUI

extension AnyTransition {
    // MARK: - Public Properties
    static var coinToss: AnyTransition {
        let insertion = AnyTransition.opacity
            .combined(with: scale(scale: 4))
            .animation(.spring())
        
        let removal = AnyTransition.opacity
            .combined(with: move(edge: .bottom))
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
