//
//  HomeHeaderView.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import SwiftUI
struct HomeHeaderView: View {
    let configuration = Home.Configuration()
    let aboutMe: AboutMeModel?
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                Image(configuration.images.hederTransperent)
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 135)
                HStack(alignment: .top) {
                    Image(configuration.images.person)
                        .resizable()
                        .frame(width: 110, height: 130)
                        .padding(.leading)
                    VStack(alignment: .leading) {
                        aboutMe.map { intro in
                            VStack {
                                let info = aboutMe?.primaryInfo
                                TextSubheadline(text: info?.designation.capitalized ?? "")
                                TextSubheadline(text: info?.companyName.capitalized ?? "")
                                VStack(alignment: .center) {
                                    Text(info?.quote ?? "")
                                        .padding(.top)
                                        .font(.system(.caption))
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
            .cornerRadius(4)
        }
    }
}

#Preview {
    HomeHeaderView(aboutMe: nil)
}
