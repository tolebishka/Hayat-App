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
                    }
                    TopBar(selectedTab: $tabSelected)
                }
                }
            }
            
        }
        

#Preview {
    NavigationView{
        HomePageView()
    }
    .environmentObject(DayListViewModel())
    
}
