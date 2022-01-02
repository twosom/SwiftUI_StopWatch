//
//  ClockTick.swift
//  SwiftUI_StopWatch_Review
//
//  Created by Desire L on 2022/01/03.
//

import SwiftUI

struct ClockTick: View {

    private let tickRange: Range<Int> = 0..<60

    var body: some View {
        ZStack {
            ForEach(tickRange) { (tick: Int) in
                Rectangle()
                    .fill(.black)
                    .frame(width: isLongTick(tick: tick) ? 1.8 : 1.3, height: isLongTick(tick: tick) ? 20 : 15)
                    .offset(y: 120)
                    .rotationEffect(.degrees(Double(tick) / Double(tickRange.count) * 360))
            }
        }
    }

    private func isLongTick(tick: Int) -> Bool {
        tick % 5 == 0
    }
}

struct ClockTick_Previews: PreviewProvider {
    static var previews: some View {
        ClockTick()
    }
}
