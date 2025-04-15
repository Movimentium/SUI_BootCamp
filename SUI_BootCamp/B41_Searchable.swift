//  B40_List.swift
//  SUI_BootCamp
//  Created by Miguel Gallego on 15/4/25.
import SwiftUI

struct B41_Searchable: View {
    
    @State private var friends = ["John", "Mary", "Steven", "Steve", "Jerry" ]
    @State private var filteredFriends: [String] = []
    @State private var search = ""
    
    var body: some View {
        NavigationStack {

            List(filteredFriends, id: \.self) { friend in
                Text(friend)
            }
            .searchable(text: $search)
            .onChange(of: search) {
                onChangeOfSearch()
            }
            .navigationTitle("Friends")
        }
        .onAppear {
            setInitialState()
        }
    }
    
    // MARK: - Logic
    
    func onChangeOfSearch() {
        if search.isEmpty {
            setInitialState()
        } else {
            filteredFriends = friends.filter { $0.contains(search) }
        }
    }
    
    func setInitialState() {
        filteredFriends = friends
    }
}

#Preview {
    B41_Searchable()
}
