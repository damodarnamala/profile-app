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
        VStack {
            Image(systemName: "graduationcap")
                .font(.system(size: 64))
                .padding(.bottom)
            
            VStack(alignment: .leading) {
                
                intro.map { introItem in
                    VStack(alignment: .center) {
                        TextHeadline(text: introItem.education.title)
                            .padding(.bottom)
                        ForEach(introItem.education.all, id: \.self) { item in
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
    Education().build()
}
