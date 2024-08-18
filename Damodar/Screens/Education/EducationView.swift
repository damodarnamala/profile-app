//
//  EducationView.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import SwiftUI

struct EducationView: View {
    var viewModel: EducationViewModel
    @State var intro: Intro?
    
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
                    intro.map { introItem in
                        VStack(alignment: .center) {
                            ForEach(introItem.education.all, id: \.self) { item in
                                Text(item)
                                    .font(.system(size: 12, weight: .light))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.vertical, 1)
                            }
                        }
                        .navigationTitle(introItem.education.title )
                    }
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .padding()
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
    Education().build()
}
