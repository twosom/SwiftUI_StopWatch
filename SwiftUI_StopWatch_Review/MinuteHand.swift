//
//  MinuteHand.swift
//  SwiftUI_StopWatch_Review
//
//  Created by Desire L on 2022/01/03.
//

import SwiftUI

struct MinuteHand: View {

    var second: Double

    var body: some View {
        Rectangle()
            .fill(.black)
            .frame(width: 2, height: 80)
            .offset(y: -80 / 2)
            .rotationEffect(.degrees(second / 60 / 60 * 360))
    }
}

struct MinuteHand_Previews: PreviewProvider {
    static var previews: some View {
        MinuteHand(second: 360)
    }
}
