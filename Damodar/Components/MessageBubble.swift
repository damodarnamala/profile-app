//
//  MessageBubble.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import SwiftUI

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
