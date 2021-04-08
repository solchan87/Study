//
//  NavigationView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/07.
//

import SwiftUI

struct TestNavigationView: View {
  var body: some View {
    NavigationView {
      NavigationLink(destination: TextView()) {
        Text("Test")
      }
    }
  }
}

struct Navigation_Previews: PreviewProvider {
  static var previews: some View {
    TestNavigationView()
      .previewDevice("iPhone 12 mini")
  }
}
