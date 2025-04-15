//  B40_List.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 15/4/25.
import SwiftUI

struct B40_List: View {
    
    @State private var name: String = ""
    @State private var friends: [String] = []
    
    var body: some View {
        VStack {
            TextField("Nombre", text: $name)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    friends.append(name)
                    name = ""
                }
                .padding()

            List(friends, id: \.self) { friend in
                Text(friend)
            }
        }
    }
}

#Preview {
    B40_List()
}
