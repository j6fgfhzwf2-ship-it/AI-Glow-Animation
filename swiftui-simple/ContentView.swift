import SwiftUI

struct ContentView: View {
    @State private var animate = false

    var body: some View {
        ZStack {
            Circle()
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [
                            Color.blue.opacity(0.8),
                            Color.purple.opacity(0.5),
                            Color.clear
                        ]),
                        center: .center,
                        startRadius: 20,
                        endRadius: 250
                    )
                )
                .blur(radius: 40)
                .scaleEffect(animate ? 1.2 : 1)
                .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true),
                           value: animate)
        }
        .onAppear { animate = true }
    }
}

