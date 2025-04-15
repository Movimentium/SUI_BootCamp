//  B39_MoreState.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 15/4/25.
import SwiftUI

struct B39_MoreState: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Toggle(isOn: $isOn) { 
                Text(isOn ? "ON" : "OFF")
                    .foregroundStyle(isOn ? .black : .white)
            }
            .fixedSize()  // ZTip
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isOn ? .yellow : .black)
    }
}

#Preview {
    B39_MoreState()
}
