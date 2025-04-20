//  B43_B_EnvironmentObject.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 15/4/25.
import SwiftUI

// Pre iOS 17
class LedState: ObservableObject {
    @Published var isOn: Bool = false
}

struct LedView: View {
    @EnvironmentObject private var ledState: LedState

    var body: some View {
        VStack {
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(ledState.isOn ? .fill : .none)
                .foregroundStyle(ledState.isOn ? .yellow : .gray, .gray)
                .padding()
            Button("Toggle") {
                ledState.isOn.toggle()
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
    @EnvironmentObject private var ledState: LedState
    
    var body: some View {
        VStack {
            HabitacionConLedView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(ledState.isOn ? .white : .black)
    }
}

#Preview {
    B43_B_EnvironmentObject()
        .environmentObject(LedState())
}

// En NombreProyApp.swift (donde está @main)
//
// @StateObject private var ledState = LedState()
// ...
//      ContentView()
//          .environmentObject(ledState)
