//  B33_Image.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 12/3/25.

import SwiftUI

struct B33_Image: View {
    var body: some View {
        Image(.imgCostaRica)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .padding()
        
        Text("Pájaro de Costa Rica")
        
//        AsyncImage(url: URL?) { img in
//            
//        } placeholder: {
//            Text("Downloading...")
//        }

    }
}

#Preview {
    B33_Image()
}
