//  B36_DetailView.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 26/3/25.
import SwiftUI

struct B36_DetailView: View {
    let hike: Hike
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
        }
        .navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        B36_DetailView(hike: hikes.first!)
    }
}

