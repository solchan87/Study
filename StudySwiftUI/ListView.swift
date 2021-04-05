//
//  ListView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/05.
//

import SwiftUI

struct Row: View {
  var name: String
  
  var body: some View {
    Text("Row-\(name)")
  }
}

struct ListView: View {
  var body: some View {
    List {
      Row(name: "1")
      Row(name: "2")
      Row(name: "3")
    }
    .accentColor(.green)
  }
}

struct ListView_Previews: PreviewProvider {
  static var previews: some View {
    ListView()
      .previewDevice("iPhone 12 mini")
  }
}
