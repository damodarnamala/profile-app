//
//  DetailsView.swift
//  Damodar
//
//  Created by Damodar Namala on 19/08/24.
//

import SwiftUI


struct DetailsView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack(spacing: 8) {
                    GestureIconView(name: "house.fill") {
                        
                    }
                    
                    GestureIconView(name: "rupeesign.bank.building") {
                        
                    }
                    
                    GestureIconView(name: "envelope.open.fill") {
                        
                    }
                }
            }
        }
    }
}

#Preview {
    DetailsView()
}



struct GestureIconView: View {
    var name: String
    let action: (() -> Void)
    var body: some View {
        Image(systemName: name)
            .font(.system(size: 34))
            .padding(.bottom)

    }
}
