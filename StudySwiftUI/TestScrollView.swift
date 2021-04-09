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
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
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
