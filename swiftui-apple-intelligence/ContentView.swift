import SwiftUI

struct IntelligentAura: View {
    @State private var shift = false

    var body: some View {
        ZStack {
            Circle()
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [
                            .purple, .blue, .cyan, .mint, .purple
                        ]),
                        center: .center
                    )
                )
                .blur(radius: 60)
                .scaleEffect(1.4)
                .rotationEffect(.degrees(shift ? 360 : 0))
                .animation(.linear(duration: 6).repeatForever(autoreverses: false),
                           value: shift)
            
            Circle()
                .stroke(Color.white.opacity(0.2), lineWidth: 3)
                .scaleEffect(shift ? 1.1 : 0.9)
                .blur(radius: 5)
                .animation(.easeInOut(duration: 2).repeatForever(),
                           value: shift)
        }
        .onAppear { shift = true }
    }
}

struct ContentView: View {
    var body: some View {
        IntelligentAura()
    }
}

