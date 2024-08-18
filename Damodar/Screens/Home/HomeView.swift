//
//  HomeView.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import SwiftUI
import Combine



@MainActor
struct HomeView: View {
    var viewModel: HomeViewModel
    @State var intro: Intro?
    @State var bag = Set<AnyCancellable>()
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            VStack() {
                HomeHeaderView(intro: intro)
                ScrollView {
                    HStack {
                        MessageBubble(isIncoming: true) {
                            TextCaption(text: intro?.aboutMe ?? "")
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                        }
                    }
                    HomeQuickView()
                }
            }
            .navigationTitle(intro?.name ?? "")
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .onAppear {
                viewModel.getIntro()
            }
            .onReceive(viewModel.introSubject) { intro in
                self.intro = intro
            }
        }
    }
}

#Preview {
    Home().build(configuration: .init())
}



struct TilesView: View {
    let title: String
    let text: String
    var body: some View {
        VStack(alignment: .center) {
            TextHeadline(text: title)
            Text(text)
                .font(.system(size: 12, weight: .light))
        }.padding()
    }
}


