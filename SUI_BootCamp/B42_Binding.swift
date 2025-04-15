//  B42_Binding.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 15/4/25.
import SwiftUI

struct BombillaView: View {
    
    @Binding  var isOn: Bool
    
    
    var body: some View {
        VStack {
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(isOn ? .fill : .none)
                .foregroundStyle(isOn ? .yellow : .gray, .gray)
                .padding()
            Button("Toggle") {
                isOn.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
    }
    
}

struct B42_Binding: View {
    @State private var isLightOn: Bool = false
    
    var body: some View {
        VStack {
            BombillaView(isOn: $isLightOn)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isLightOn ? .white : .black)
    }
}

#Preview {
    B42_Binding()
}
