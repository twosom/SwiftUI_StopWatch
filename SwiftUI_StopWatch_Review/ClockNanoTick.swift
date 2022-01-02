//
//  ClockNanoTick.swift
//  SwiftUI_StopWatch_Review
//
//  Created by Desire L on 2022/01/03.
//

import SwiftUI

struct ClockNanoTick: View {

    private let tickRange: Range<Int> = 0..<10

    var body: some View {
        //TODO 나노초 틱

        ZStack {
            ForEach(tickRange) { (tick: Int) in
                Rectangle()
                    .fill(.blue.opacity(0.78))
                    .frame(width: 2, height: 8)
                    .offset(y: 30)
                    .rotationEffect(.degrees(Double(tick) / Double(tickRange.count) * 360))
            }
        }
    }
}

struct ClockNanoTick_Previews: PreviewProvider {
    static var previews: some View {
        ClockNanoTick()
    }
}
