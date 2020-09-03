//
//  ContentView.swift
//  Avocados
//
//  Created by Rick Brown on 01/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var headers: [Header] = headersData
  
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .top, spacing: 0) {
            ForEach(headers) { item in
              HeaderView(header: item)
            }
          }
        }
        Text("Avocado Dishes")
          .fontWeight(.bold)
          .modifier(TitleModifier())
        DishesView()
          .frame(maxWidth: 620)
        VStack(alignment: .center, spacing: 20) {
          Text("All about avocados")
            .fontWeight(.bold)
            .modifier(TitleModifier())
          Text("Everything you wanted to know about avocados but were to afraid to ask.")
            .font(.system(.body, design: .serif))
            .multilineTextAlignment(.center)
            .foregroundColor(Color.gray)
            .frame(maxWidth: 340, minHeight: 60)
        }
        .frame(maxWidth: 640)
        .padding()
        .padding(.bottom, 85)
      }
    }
    .edgesIgnoringSafeArea(.all)
    .padding(0)
  }
}

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .foregroundColor(Color("ColorGreenAdaptive"))
      .padding(8)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(headers: headersData)
  }
}
