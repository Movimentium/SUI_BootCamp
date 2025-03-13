//  B34_List_Imgs.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 13/3/25.

import SwiftUI

struct B34_List_Imgs: View {
    
    let hikes = [
        Hike(name: "Salmonberry Trail", photo: "imgSal", miles: 6),
        Hike(name: "Tom, Dick, and Harry Mountain", photo: "imgTom", miles: 5.8),
        Hike(name: "Tamanawas", photo: "imgTam", miles: 5)
    ]
    
    var body: some View {
        List(hikes) { hike in
            HStack(alignment: .top) {
                Image(hike.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(width: 100)
                
                VStack(alignment: .leading) {
                    Text(hike.name)
                    Text("\(hike.miles.formatted()) miles")
                        .font(.callout)
                        .foregroundStyle(.secondary)
                }
            }
        }
    }
}

#Preview {
    B34_List_Imgs()
}

// MARK: - Model

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
