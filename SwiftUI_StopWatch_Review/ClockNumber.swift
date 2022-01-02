//
//  ClockNumber.swift
//  SwiftUI_StopWatch_Review
//
//  Created by Desire L on 2022/01/03.
//

import SwiftUI

struct ClockNumber: View {

    private var tickRange: Range<Int> = 0..<12

    var body: some View {
        ZStack {
            ForEach(tickRange) { (tick: Int) in
                HStack {
                    Text("\(tick)")
                        .rotationEffect(.degrees(Double(tick) / Double(tickRange.count) * -360))
                }

                    .offset(y: -140)
                    .rotationEffect(.degrees(Double(tick) / Double(tickRange.count) * 360))
            }
        }
    }
}

struct ClockNumber_Previews: PreviewProvider {
    static var previews: some View {
        ClockNumber()
    }
}
