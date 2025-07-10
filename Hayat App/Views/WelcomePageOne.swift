import SwiftUI

struct WelcomePageOne: View {
    var body: some View {
        ZStack {
            Color("Second Background").ignoresSafeArea()

            // Украшения в углах
            Image("Ornament right black")
                .offset(x: 166, y: 350)
                .aspectRatio(contentMode: .fill)
            Image("Ornament left black")
                .offset(x: -166, y: -350)
                .aspectRatio(contentMode: .fill)

            PageControlView()
        }
    }
}

#Preview {
    WelcomePageOne()
}
