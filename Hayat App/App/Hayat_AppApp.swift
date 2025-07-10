//
//  Hayat_AppApp.swift
//  Hayat App
//
//  Created by Arcana Inc on 10.07.2025.
//

import SwiftUI

enum LaunchScreenState: String {
    case welcome
    case home
}


@main
struct Hayat_AppApp: App {
    @AppStorage("launchScreen") var launchScreen: LaunchScreenState = .welcome

    var body: some Scene {
        WindowGroup {
            switch launchScreen {
            case .welcome:
                MainView()
            case .home:
                HomePageView()
                    .environmentObject(DayListViewModel())
            }
        }
    }
}
