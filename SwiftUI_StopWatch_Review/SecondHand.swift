//
//  SecondHand.swift
//  SwiftUI_StopWatch_Review
//
//  Created by Desire L on 2022/01/03.
//

import SwiftUI

struct SecondHand: View {

    var second: Double

    private var height: CGFloat = 100

    public init(second: Double) {
        self.second = second
    }

    var body: some View {
        //TODO 초침
        Rectangle()
            .fill(.red)
            .frame(width: 2, height: height)
            .offset(y: -height / 2)
            //TODO 변수 선언
            .rotationEffect(.degrees(second / 60 * 360))
    }
}

struct SecondHand_Previews: PreviewProvider {
    static var previews: some View {
        SecondHand(second: 15)
    }
}
