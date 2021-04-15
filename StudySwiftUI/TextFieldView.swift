//
//  TextFieldView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/15.
//

import SwiftUI

struct TextFieldView : View {
    @State private var password: String = ""
    var body: some View {
        VStack {
            SecureField("Enter a password", text: $password)
            Text("You entered: \(password)")
        }
        .padding(.all, 20)
    }
}

struct TextFieldView_Previews: PreviewProvider {
  static var previews: some View {
    TextFieldView()
      .previewDevice("iPhone 12 mini")
  }
}
