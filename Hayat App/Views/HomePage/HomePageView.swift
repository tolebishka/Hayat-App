//
//  HomePageView.swift
//  Hayat App
//
//  Created by Arcana Inc on 10.07.2025.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var dayListViewModel: DayListViewModel
    @State private var tabSelected: Tab = .house
    init() {
           UITabBar.appearance().isHidden = true
       }
    var body: some View {
        ZStack {
            VStack {
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
                            Image(systemName: "list.bullet")
                            Text("person")
                        }
                        .tag(Tab.person)
                    Text("leaf")
                        .tabItem {
                            Image(systemName: "list.bullet")
                            Text("leaf")
                        }
                        .tag(Tab.leaf)
                    Text("gearshape gearshape")
                        .tabItem {
                            Image(systemName: "list.bullet")
                            Text("gearshape")
                        }
                        .tag(Tab.gearshape)
                    }
                
                    TopBar(selectedTab: $tabSelected)
                    .padding(.bottom, 15)

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
