//
//  SwiftUIView.swift
//  Learn
//
//  Created by Rohan Sakhare on 11/06/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var name: String = ""
    @State private var friends: [String] = []
    
    var body: some View {
        VStack {
            TextField("Enter the name", text: $name)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                        friends.append(name)
                        name = ""
                    
                }
                .padding()
            
            List {
                ForEach(friends, id: \.self) { friend in
                    Text(friend)
                }
                .onDelete(perform: deleteFriend)
            }
        }
        .padding()
    }
    
    func deleteFriend(at offsets: IndexSet) {
        friends.remove(atOffsets: offsets)
    }
}

#Preview {
    SwiftUIView()
}
