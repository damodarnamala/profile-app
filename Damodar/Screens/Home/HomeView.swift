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
    @EnvironmentObject var store: Store
    @State var bag = Set<AnyCancellable>()
    @State private var pulse = false
    @State var isDetailViewPresented = false
    @State var aboutMe: AboutMeModel?

    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            VStack() {
                HomeHeaderView(aboutMe: aboutMe)
                    .onLongPressGesture {
                        showDetailView()
                    }
                ScrollView {
                    HStack {
                        MessageBubble(isIncoming: true) {
                            TextCaption(text: aboutMe?.primaryInfo.name ?? "")
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                        }
                    }
                    HomeQuickView()
                    qrCodeImage
                }
            }
            .navigationTitle(aboutMe?.primaryInfo.name ?? "")
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .onAppear {
                aboutMe = store.getInfo()
            }
            .sheet(isPresented: $isDetailViewPresented) {
                DetailsView()
            }
        }
    }
    
    private func showDetailView() {
        isDetailViewPresented = true
    }

    // Refactor the QR code image into a computed property
    private var qrCodeImage: some View {
        Image(viewModel.configuration.images.qrCodeLinkedin)
            .resizable()
            .frame(width: 140, height: 140)
            .padding(.top)
            .scaleEffect(pulse ? 1.2 : 1)
            .animation(.easeInOut, value: pulse)
            .onLongPressGesture {
                copyToClipboard()
            }
    }

    // Method to handle copying the URL to the clipboard
    private func copyToClipboard() {
        UIPasteboard.general.string = viewModel.configuration.strings.linkedInUrl
        animatePulse()
    }

    // Method to handle the animation logic
    private func animatePulse() {
        withAnimation(Animation.easeInOut(duration: 1)) {
            pulse.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                pulse.toggle()
            }
        }
    }
}

#Preview {
    Home.build()
}
