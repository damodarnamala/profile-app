//
//  Playground.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import SwiftUI

struct Playground: View {
    var body: some View {
        GeometryReader { geometry in
                VStack {
                    Text("Home")
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(0...10, id: \.self) { number in
                                HStack {
                                    ZStack {
                                        Image("card")
                                            .aspectRatio(contentMode: .fill)
                                            .cornerRadius(16)
                                        Text("\(number)")
                                            .font(.title3)
                                            .foregroundStyle(.red)
                                    }
                                }
                                .background(Color.orange)
                                .frame(width: geometry.size.width, height: geometry.size.width)
                                .rotation3DEffect(.degrees(Double(geometry.frame(in: .global).minX) - 40) / -20, axis: (x: 0, y: 10, z: 0))
                            }
                        }
                    }
                }
                .fixedSize(horizontal: false, vertical: true)    
        }
    }
}//////////////////////////////////////////////////////////////////////////////////////////////////////////////////÷/÷÷÷÷÷÷÷÷//÷÷÷/÷÷÷/////////////÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷÷



#Preview {
    Playground()
}
