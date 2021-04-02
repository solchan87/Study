//
//  StackView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/02.
//


import SwiftUI

struct StackView: View {
  
  var body: some View {
    VStack {
      Text("1")
      Text("2")
      HStack {
        Text("3")
        Text("4")
      }
    }
  }
}

struct StackView_Previews: PreviewProvider {
  static var previews: some View {
    StackView()
      .previewDevice("iPhone 12 mini")
  }
}
