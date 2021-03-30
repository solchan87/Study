//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/03/28.
//

import SwiftUI

struct ContentView: View {
  
  @State var customValue: String
  
  init() {
    _customValue = State(initialValue: "이로케")
  }
  
  var body: some View {
    Text(customValue)
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

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
