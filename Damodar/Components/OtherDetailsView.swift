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
                    Text(text)
                        .font(.system(size: 12, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 1)
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
struct SnapshotView: View {
    let snapshots: [SnapshotModel]
    var body: some View {
        VStack {
            ForEach(snapshots, id: \.self) { model in
                VStack {
                    Text(model.title)
                        .font(.system(size: 12, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 1)
                        .padding(.horizontal)
                    Text(model.details)
                        .font(.system(size: 12, weight: .light))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.vertical, 1)
                }
                .padding(.vertical, 8)
            }
        }
    }
}


