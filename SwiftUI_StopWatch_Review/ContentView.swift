//
//  ContentView.swift
//  SwiftUI_StopWatch_Review
//
//  Created by Desire L on 2022/01/03.
//
//

import SwiftUI

struct ContentView: View {

    @State(initialValue: 0)
    private var second: Double

    @State(initialValue: false)
    private var isStart: Bool

    var timer = Timer.publish(every: 0.01, on: .current, in: .default).autoconnect()


    var timeString: String {
        let sec = Int(second) % 60
        let minute = Int(second) / 60

        let milliSec = second.truncatingRemainder(dividingBy: 1)

        return "\(String(format: "%02d", minute)):\(String(format: "%02d", sec)):\(String(format: "%.1f", milliSec * 10))"
    }


    var body: some View {
        VStack {
            StopWatchLayout(second: $second)
                .onReceive(timer) { _ in
                    if isStart {
                        withAnimation {
                            self.second += 0.01
                        }

                    }
                }
                .offset(y: -100)

            StartStopButton(isStart: $isStart)
                .padding(.bottom, 50)
            Text(timeString)
                .font(.largeTitle)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
