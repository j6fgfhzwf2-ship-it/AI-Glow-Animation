import SwiftUI

struct LiquidGradient: View {
    @State private var move = false

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, .purple, .pink]),
                startPoint: move ? .topLeading : .bottomTrailing,
                endPoint: move ? .bottomTrailing : .topLeading
            )
            .blur(radius: 80)
            .animation(
                .easeInOut(duration: 5).repeatForever(autoreverses: true),
                value: move
            )
        }
        .onAppear { move = true }
    }
}

