//  B35_Navigation.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 13/3/25.
import SwiftUI

let hikes = [
    Hike(name: "Salmonberry Trail", photo: "imgSal", miles: 6),
    Hike(name: "Tom, Dick, and Harry Mountain", photo: "imgTom", miles: 5.8),
    Hike(name: "Tamanawas", photo: "imgTam", miles: 5)
]

struct B35_Navigation: View {
    

    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }
            .navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
                B36_DetailView(hike: hike)
            }
        }
    }
}
 
#Preview {
    B35_Navigation()
}

 
 

struct HikeCellView: View {
    let hike: Hike
    
    var body: some View {
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
