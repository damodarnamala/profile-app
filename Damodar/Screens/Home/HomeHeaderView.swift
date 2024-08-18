//
//  HomeHeaderView.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import SwiftUI
struct HomeHeaderView: View {
    let configuration = Home.Configuration()
    let intro: Intro?
    
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
                        intro.map { intro in
                            VStack {
                                TextSubheadline(text: intro.designation.capitalized)
                                TextSubheadline(text: intro.companyName.capitalized)
                                VStack(alignment: .center) {
                                    Text("\"A problem well stated is half solved.!!")
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
        }
    }
}

#Preview {
    HomeHeaderView(intro: nil)
}
