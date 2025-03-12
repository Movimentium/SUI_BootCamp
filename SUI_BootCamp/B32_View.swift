//  B32_View.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 12/3/25.

import SwiftUI

struct B32_View: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Text("First Line")
                .frame(maxWidth: .infinity, alignment: .leading)
                .border(.red)
                .frame(minHeight: 100)
                .border(.blue)
                .font(.title3)
                .foregroundStyle(.cyan)
            Text("Second Line")
                .border(.red)
                .foregroundStyle(.green)
            Text("Third Line")
                .border(.red)
            HStack {
                Text("Left")
                Text("Right")
                    .fontWeight(.heavy)
            }
        }
        .border(.red)
        .foregroundStyle(.orange)
    }
}

#Preview {
    B32_View()
}

/*
 Topics:  
 
 VStack  HStack  spacing
 .foregroundStyle
 .font
 .fontWeight
 
 */
