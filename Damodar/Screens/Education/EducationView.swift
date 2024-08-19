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
                Image(systemName: "graduationcap")
                    .font(.system(size: 64))
                    .padding(.bottom)
                VStack(alignment: .leading) {
                    aboutMe.map { me in
                        VStack(alignment: .center) {
                            Section(header: TextSubheadline(text: me.education.title)
                                .frame(maxWidth: .infinity, alignment: .leading)) {
                                ForEach(me.education.details, id: \.self) { item in
                                    Text(item)
                                        .font(.system(size: 12, weight: .light))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.vertical, 1)
                                }
                            }
                            Spacer().frame(height: 34)
                            Section(header: TextSubheadline(text: me.certifications.title)
                                .frame(maxWidth: .infinity, alignment: .leading)) {
                                ForEach(me.certifications.details, id: \.self) { item in
                                    Text(item)
                                        .font(.system(size: 12, weight: .light))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.vertical, 1)
                                }
                            }
                        }
                        .navigationTitle(me.education.title )
                    }
                }
                .padding(.horizontal)
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
    Education.build()
}
