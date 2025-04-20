//  B43_B_EnvironmentObject.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 15/4/25.
import SwiftUI

// Pre iOS 17
class LightState: ObservableObject {
    @Published var isOn: Bool = false
}

struct LedView: View {
    @EnvironmentObject private var lightState: LightState

    var body: some View {
        VStack {
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(lightState.isOn ? .fill : .none)
                .foregroundStyle(lightState.isOn ? .yellow : .gray, .gray)
                .padding()
            Button("Toggle") {
                lightState.isOn.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}


struct HabitacionConLedView: View {
    var body: some View {
        LedView()
    }
}


struct B43_B_EnvironmentObject: View {
    @EnvironmentObject private var lightState: LightState
    
    var body: some View {
        VStack {
            HabitacionConLedView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(lightState.isOn ? .white : .black)
    }
}

#Preview {
    B43_B_EnvironmentObject()
        .environmentObject(LightState())
}

// En NombreProyApp.swift (donde está @main)
//
// @StateObject private var lightState = LightState()
// ...
//      ContentView()
//          .environmentObject(lightState)
