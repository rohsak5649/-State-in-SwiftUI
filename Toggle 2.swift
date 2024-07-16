//
//  ContentView.swift
//  Learn
//
//  Created by Rohan Sakhare on 08/06/24.


import SwiftUI

struct ContentView: View {
    @State private var isOn : Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "ON" : "OFF")
                    .foregroundColor(isOn ? .black : .cyan)
            }).fixedSize()
          
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(isOn ? .cyan : .black)
    }
}

#Preview {
    ContentView()
}
