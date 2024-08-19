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
                Image(systemName: "briefcase")
                    .font(.system(size: 64))
                    .padding(.bottom)
                
                VStack(alignment: .leading) {
                    aboutMe.map { me in
                        VStack(alignment: .center) {
                            ForEach(me.experience.details, id: \.self) { item in
                                Text(item)
                                    .font(.system(size: 12, weight: .light))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.vertical, 1)
                            }
                        }
                        .navigationTitle(me.experience.title )
                    }
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
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
