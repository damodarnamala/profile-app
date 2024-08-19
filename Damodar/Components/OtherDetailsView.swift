//
//  OtherDetailsView.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import Foundation
import SwiftUI

struct OtherDetailsView: View {
    let image: String?
    let subHeading: String?
    let details: [String]

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 8) {
                image.map { img in
                    Image(systemName: img)
                        .font(.system(size: 64))
                        .padding(.bottom)
                }
                subHeading.map { text in
                    TextSubheadline(text: text)
                        .padding(.horizontal)
                }
                ForEach(details, id: \.self) { item in
                    Text("• " + item)
                        .font(.system(size: 12, weight: .light))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.vertical, 1)
                }
            }
        }
    }
}
