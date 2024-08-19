//
//  EducationView.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import SwiftUI

struct EducationView: View {
    var viewModel: EducationViewModel
    @State var aboutMe: AboutMeModel?
    @EnvironmentObject var store: Store

    init(viewModel: EducationViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                aboutMe.map { me in
                    VStack {
                        OtherDetailsView(image: "graduationcap",
                                         subHeading: nil,
                                         details: me.education.details)
                        .padding(.vertical)
                        
                        OtherDetailsView(image: nil,
                                         subHeading: me.certifications.title,
                                         details: me.certifications.details)

                    }
                    .navigationTitle(me.education.title)
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
    Education.build()
}
