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
                            ZStack {
                                VStack {
                                    TextTitle(text: intro.name.capitalized)
                                    TextSubheadline(text: intro.designation.capitalized)
                                    TextSubheadline(text: intro.companyName.capitalized)
                                }
                            }
                        }
                    }
                    .padding(.top, 44)
                }
            }
        }
    }
}

#Preview {
    HomeHeaderView(intro: nil)
}


struct MessageBubble<Content: View>: View {
    let content: Content
    let isIncoming: Bool
    
    init(isIncoming: Bool, @ViewBuilder content: () -> Content) {
        self.isIncoming = isIncoming
        self.content = content()
    }
    
    var body: some View {
        if isIncoming {
            content
                .padding(.vertical, 24)
                .background(.blue.opacity(0.25))
                .cornerRadius(4)
                .overlay(
                    Path { path in
                        path.move(to: CGPoint(x: 32, y: 0))
                        path.addLine(to: CGPoint(x: 24, y: 16))
                        path.addLine(to: CGPoint(x: 40, y: 16))
                    }
                        .fill(.blue.opacity(0.25))
                        .offset(y: -16)
                )
        }
    }
    
}
