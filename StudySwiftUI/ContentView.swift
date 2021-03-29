//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/03/28.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    GeometryReader(content: { geometry in
      VStack(alignment: .leading, spacing: 8, content: {
        Text("Hello, worldd!\nddddddd")
          .foregroundColor(.red)
          .bold()
          .fontWeight(.bold)
          .padding()
          .shadow(color: .black, radius: 1, x: 0, y: 2)
        
        // 패딩 이후에 다른 속성 추가가 안됨.
        // 아하.. 리턴값이 있구나...
        Text("ddsadas")
          .padding()
      })
      .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
    })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
