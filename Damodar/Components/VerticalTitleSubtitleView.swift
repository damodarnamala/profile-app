//
//  VerticalTitleSubtitleView.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import SwiftUI

struct VerticalTitleSubtitleView: View {
    let title: String
    let text: String
    var body: some View {
        VStack(alignment: .center) {
            TextHeadline(text: title)
                .padding(.bottom, 4)
            Text(text)
                .font(.system(size: 12, weight: .light))
        }.padding()
    }
}

#Preview {
    VerticalTitleSubtitleView(title: "Name", text: "Damodar")
}
