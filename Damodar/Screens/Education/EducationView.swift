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
                            ForEach(me.education.details, id: \.self) { item in
                                Text(item)
                                    .font(.system(size: 12, weight: .light))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.vertical, 1)
                            }
                        }
                        .navigationTitle(me.education.title )
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
    Education.build()
}
