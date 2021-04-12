//
//  TestScrollView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/09.
//


import SwiftUI

struct TestScrollView: View {
  var body: some View {
    ScrollView(
      .vertical,
      showsIndicators: true,
      content: {
        VStack(spacing: 20) {
          ForEach(0..<100) { i in
            StackView {
              Text("Test")
            }
          }
        }
      })
  }
}

struct TestScrollView_Previews: PreviewProvider {
  static var previews: some View {
    TestScrollView()
      .previewDevice("iPhone 12 mini")
  }
}
