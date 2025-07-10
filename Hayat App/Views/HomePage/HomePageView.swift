import SwiftUI

struct HomePageView: View {

    @EnvironmentObject var dayListViewModel: DayListViewModel
    @State private var tabSelected: Tab = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }

    var body: some View {
        ZStack {
            
            // Фон
            Color("firstBackground")
                .ignoresSafeArea()
            
            // Контент
            TabView(selection: $tabSelected) {
                DayListView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Ev")
                    }
                    .tag(Tab.house)

                Text("Gün Listesi")
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Gün Listesi")
                    }
                    .tag(Tab.message)

                Text("person")
                    .tabItem {
                        Image(systemName: "person")
                        Text("person")
                    }
                    .tag(Tab.person)

                Text("leaf")
                    .tabItem {
                        Image(systemName: "leaf")
                        Text("leaf")
                    }
                    .tag(Tab.leaf)

                Text("gearshape gearshape")
                    .tabItem {
                        Image(systemName: "gearshape")
                        Text("gearshape")
                    }
                    .tag(Tab.gearshape)
            }

            // Топбар снизу
            VStack {
                Spacer()
                TopBar(selectedTab: $tabSelected)
                    .padding(.bottom, 28)
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
    

}

#Preview {
    NavigationView{
        HomePageView()
            .environmentObject(DayListViewModel())
    }
    
    
}
