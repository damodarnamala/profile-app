//
//  ExperienceView.swift
//  Damodar
//
//  Created by Damodar Namala on 18/08/24.
//

import SwiftUI

struct ExperienceView: View {
    var viewModel: ExperienceViewModel
    @State var intro: Intro?
    
    init(viewModel: ExperienceViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Image(systemName: "briefcase.fill")
                .font(.system(size: 64))
                .padding(.bottom)

            VStack(alignment: .leading) {
                intro.map { introItem in
                    VStack(alignment: .center) {
                        TextHeadline(text: introItem.experience.title)
                            .padding(.bottom)
                        ForEach(introItem.experience.all, id: \.self) { item in
                            Text(item)
                                .font(.system(size: 12, weight: .light))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.vertical, 1)
                        }
                    }
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



#Preview {
    ExperienceView(viewModel: .init(usecase: .init()))
}
