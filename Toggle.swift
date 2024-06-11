import SwiftUI

struct ContentView: View {
    @State private var isOn : Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "On" : "OFF")
            }).fixedSize()
          
        }.padding()
    }
}

#Preview {
    ContentView()
}
