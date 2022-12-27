//
//  HearderView.swift
//  Guilia
//
//  Created by Theophane on 2022/12/27.
//

import SwiftUI

struct HeaderView: View {
  var title: String
  var body: some View {
    HStack {
      Spacer()
      Text(title)
        .font(.largeTitle)
        .padding()
      Spacer()
    }
    .background(backgroundView)
  }
  
  private var backgroundView: some View {
    let colors: [Color] = [.blue, .purple, .pink]
    return LinearGradient(gradient: Gradient(colors: colors),
                          startPoint: .topLeading,
                          endPoint: .bottomTrailing)
  }
}

struct HeaderView_Preview: PreviewProvider {
  static var previews: some View {
    HeaderView(title: "test title")
  }
}
