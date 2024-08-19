//
//  HomeQuickView.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import SwiftUI


struct HomeQuickView: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 1)
            .foregroundStyle(.tertiary)
        
        ScrollView(.horizontal) {
            HStack {
                VerticalTitleSubtitleView(title: "iOS Experience", text: "12+ years")
                VerticalTitleSubtitleView(title: "Team Management", text: "6+ years")
                VerticalTitleSubtitleView(title: "Published", text: "20+ Apps in app-store")
            }
        }
        .scrollIndicators(.hidden)
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 1)
            .foregroundStyle(.tertiary)
    }
}

#Preview {
    HomeQuickView()
}
