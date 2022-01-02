//
//  StartStopButton.swift
//  SwiftUI_StopWatch_Review
//
//  Created by Desire L on 2022/01/03.
//

import SwiftUI

struct StartStopButton: View {

    @Binding
    var isStart: Bool
    var body: some View {
        HStack {
            Button {
                isStart = true
            } label: {
                defaultButtonLayout(title: "Start", color: .orange)
            }

            Button {
                isStart = false
            } label: {
                defaultButtonLayout(title: "Stop", color: .gray.opacity(0.75))

            }

        }
    }

    private func defaultButtonLayout(title: String, color: Color) -> some View {
        ZStack {
            Rectangle()
                .fill(color)
                .frame(width: UIScreen.main.bounds.width / 2 - 10, height: 60)

            Text(title)
                .font(.title.bold())
                .foregroundColor(.white)
                .shadow(color: .white, radius: 2)
        }
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct StartStopButton_Previews: PreviewProvider {
    static var previews: some View {
        StartStopButton(isStart: .constant(false))
    }
}
