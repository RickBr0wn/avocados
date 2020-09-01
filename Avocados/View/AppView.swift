//
//  AppView.swift
//  Avocados
//
//  Created by Rick Brown on 01/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI

struct AppView: View {
  var body: some View {
    TabView {
      AvocadosView()
        .tabItem({
          Image("tabicon-branch")
          Text("Avocados")
        })
        .accentColor(Color.primary)
      ContentView()
        .tabItem({
          Image("tabicon-book")
          Text("Reciepes")
        })
      RipeningStagesView()
        .tabItem({
          Image("tabicon-avocado")
          Text("Ripening")
        })
      SettingsView()
        .tabItem({
          Image("tabicon-settings")
          Text("Settings")
        })
    } // tab view end
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
