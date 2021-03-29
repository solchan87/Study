//
//  Text.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/03/28.
//

import SwiftUI

struct TextView: View {
  var body: some View {
    Text("test text")
      .font(.system(size: 24))
      .bold()
      .strikethrough(true, color: .blue)
      .underline(true, color: .green)
      .kerning(4)
      .italic()
      .tracking(19)
      .foregroundColor(.red)
  }
}

struct Text_Previews: PreviewProvider {
  static var previews: some View {
    TextView()
      .previewDevice("iPhone 12 mini")
  }
}
