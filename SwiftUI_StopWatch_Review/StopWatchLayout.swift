//
//  StopWatchLayout.swift
//  SwiftUI_StopWatch_Review
//
//  Created by Desire L on 2022/01/03.
//

import SwiftUI

struct StopWatchLayout: View {

    @Binding
    var second: Double


    var body: some View {
        ZStack {
            ClockTick()
            ClockNumber()
            SecondHand(second: second)
            MinuteHand(second: second)

            //NANO
            ClockNanoTick()
                .offset(y: 60)
            NanoHand(second: second)
                .offset(y: 60)


        }

    }
}

struct StopWatchLayout_Previews: PreviewProvider {
    static var previews: some View {
        StopWatchLayout(second: .constant(25.9))
    }
}
