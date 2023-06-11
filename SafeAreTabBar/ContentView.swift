//
//  ContentView.swift
//  SafeAreTabBar
//
//  Created by Moussa on 11/6/2023.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    
    var body: some View {
        
        TabView {
            
            VStack(alignment: .leading) {
                Text("Top safe are       :   \(safeAreaInsets.top)")
                Text("Bottom safe are    :   \(safeAreaInsets.bottom)")
                Text("Leading safe are   :   \(safeAreaInsets.leading)")
                Text("Trailing safe are  :   \(safeAreaInsets.trailing)")
                Text("Tab Bar Height     :   \(UITabBarController().height)")
                Text("Tab Bar Width      :   \(UITabBarController().width)")
            }
            .tabItem {
                Label("Home", systemImage: "house.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

