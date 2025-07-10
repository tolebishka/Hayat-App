import SwiftUI

struct WelcomePageOne: View {
    var body: some View {
        ZStack {
            Color("Second Background").ignoresSafeArea()

            // Украшения в углах
            Image("Shape-right 1")
                .offset(x: 166, y: 250)
                .aspectRatio(contentMode: .fill)
            Image("Shape-left 1")
                .offset(x: -166, y: -200)
                .aspectRatio(contentMode: .fill)

            PageControlView()
        }
    }
}

#Preview {
    WelcomePageOne()
}
