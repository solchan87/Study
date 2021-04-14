//
//  SliderView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/14.
//

import SwiftUI

struct SliderView: View {
  
  @State private var point: Double = 0
  
  var body: some View {
    VStack {
      Slider(value: $point, in: -100...100, step: 1)
      Text("\(point)")
    }
    .padding(.all, 30)
  }
}

struct SliderView_Previews: PreviewProvider {
  static var previews: some View {
    SliderView()
      .previewDevice("iPhone 12 mini")
  }
}
