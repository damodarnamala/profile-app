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
            .padding(.horizontal)
        
        ScrollView(.horizontal) {
            HStack {
                TilesView(title: "iOS Experience", text: "12+ years")
                TilesView(title: "Team Management", text: "6+ years")
                TilesView(title: "Published", text: "20+ Apps in app-store")
            }
        }
        .scrollIndicators(.hidden)
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 1)
            .foregroundStyle(.tertiary)
            .padding(.horizontal)
    }
}

#Preview {
    HomeQuickView()
}
