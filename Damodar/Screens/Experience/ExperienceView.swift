//
//  ExperienceView.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import SwiftUI

struct ExperienceView: View {
    var viewModel: ExperienceViewModel
    @State var aboutMe: AboutMeModel?
    @EnvironmentObject var store: Store
    
    init(viewModel: ExperienceViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                aboutMe.map { me in
                    OtherDetailsView(image: "briefcase",
                                     subHeading: nil,
                                     details: me.experience.details)
                    .navigationTitle(me.experience.title)
                }
            }
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .padding()
            .onAppear {
                aboutMe = store.getInfo()
            }
        }
    }
}

#Preview {
    ExperienceView(viewModel: .init())
}

