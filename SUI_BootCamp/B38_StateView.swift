//  B38_StateView.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 15/4/25.
import SwiftUI

struct B38_StateView: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
            Button("Incrementar") {
                count += 1
            }
        }
    }
}

#Preview {
    B38_StateView()
}
