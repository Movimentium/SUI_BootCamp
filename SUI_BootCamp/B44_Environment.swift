//  B44_Environment.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 15/4/25.
import SwiftUI

// iOS 17+
@Observable
class LightState {
    var isOn: Bool = false
}

struct LightView: View {
    @Environment(LightState.self) private var lightState: LightState

    var body: some View {
        @Bindable var theLightState = lightState  // <---
        
        VStack {
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(lightState.isOn ? .fill : .none)
                .foregroundStyle(lightState.isOn ? .yellow : .gray, .gray)
                .padding()
            Toggle("", isOn: $theLightState.isOn)
                .fixedSize()
//            Button("Toggle") {
//                lightState.isOn.toggle()
//            }
            .buttonStyle(.borderedProminent)
        }
    }
}


struct HabitacionConLightView: View {
    var body: some View {
        LightView()
    }
}


struct B44_Environment: View {
    @Environment(LightState.self) private var lightState: LightState
    
    var body: some View {
        VStack {
            HabitacionConLightView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(lightState.isOn ? .white : .black)
    }
}

#Preview {
    B44_Environment()
        .environment(LightState())
}

// En NombreProyApp.swift (donde está @main)
//
// @State private var lightState = LightState()
// ...
//      ContentView()
//          .environment(lightState)
