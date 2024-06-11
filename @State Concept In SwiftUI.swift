import SwiftUI

struct ContentView: View {
    @State private var count : Int = 0
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.title)
            Button("Increment"){
                count += 1
            }
          
        }.padding()
    }
}

#Preview {
    ContentView()
}


