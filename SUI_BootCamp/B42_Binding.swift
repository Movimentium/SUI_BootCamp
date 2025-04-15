//  B42_Binding.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 15/4/25.
import SwiftUI

struct BombillaView: View {
    
    @State private var isOn: Bool = true
    
    
    var body: some View {
        VStack {
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(isOn ? .fill : .none)
                .foregroundStyle(isOn ? .yellow : .black, .black)
            Button("Toggle") {
                isOn.toggle()
            }
        }
    }
    
}

struct B42_Binding: View {
    var body: some View {
        VStack {
            BombillaView()
        }
    }
}

#Preview {
    B42_Binding()
}
