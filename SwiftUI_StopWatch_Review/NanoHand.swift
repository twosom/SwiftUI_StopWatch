//
//  NanoHand.swift
//  SwiftUI_StopWatch_Review
//
//  Created by Desire L on 2022/01/03.
//

import SwiftUI

struct NanoHand: View {
    var second: Double
    private var height: CGFloat = 30

    public init(second: Double) {
        self.second = second
    }

    var body: some View {
        Rectangle()
            .fill(.brown)
            .frame(width: 3, height: height)
            .offset(y: -height / 2)
            .rotationEffect(.degrees(second / 60 * 60 * 360))

    }
}

struct NanoHand_Previews: PreviewProvider {
    static var previews: some View {
        NanoHand(second: 12.15)
    }
}
