//
//  Badge.swift
//  Landmark
//
//  Created by Mike Liao on 2019/10/13.
//  Copyright © 2019 Mike Liao. All rights reserved.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 0))
            .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            self.badgeSymbols
        }
        
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
