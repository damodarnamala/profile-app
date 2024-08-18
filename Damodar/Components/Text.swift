//
//  TextHeading.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import SwiftUI


struct TextHeadline: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.headline)
            .foregroundStyle(.primary)
    }
}

struct TextSubheadline: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.subheadline)
            .foregroundStyle(.primary)
    }
}

struct TextTitle: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title)
            .foregroundStyle(.primary)
    }
}


struct TextTitle2: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundStyle(.primary)
    }
}



struct TextTitle3: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title3)
            .foregroundStyle(.primary)
    }
}

struct TextLargeTitle: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .foregroundStyle(.primary)
    }
}

struct TextCaption: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.caption)
            .foregroundStyle(.primary)
    }
}

struct TextCaption2: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.caption2)
            .foregroundStyle(.primary)
    }
}
