import SwiftUI

struct MainView: View {
    @State var isActive: Bool = false
    var body: some View {
        if isActive {
            WelcomePageOne()
        }else{
            ZStack{
                Color("First Background")
                    .ignoresSafeArea()
                Image("Ornament right white")
                    .offset(x: 166, y: 90)
                    .aspectRatio(contentMode: .fill)
                Image("Ornament left white")
                    .offset(x: -166, y: -200)
                    .aspectRatio(contentMode: .fill)
                VStack(spacing: 32){
                    Spacer()
                    Text("كِتَاب")
                        .font(.system(size: 64))
                        .foregroundColor(.whiteText)
                        .padding(.bottom, 43)
                    
                    Spacer()
                    
                    VStack(spacing: 20) {
                        Button {
                            withAnimation{
                                isActive = true
                            }
                            
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 22)
                                    .foregroundColor(.secondBackground)
                                    .frame(width: 224, height: 45)
                                Text("Bismillah")
                                    .foregroundColor(.blackText)
                            }
                        }

                        Text("supervised by Tolebi Aitenov")
                            .font(.system(size: 16))
                            .foregroundColor(.secondBackground)
                    }
                    .padding(.bottom, 82)
                }
            }
        }
    }
}

#Preview {
    MainView()
}
