//
//  ActionSheetView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/21.
//

import SwiftUI

struct ActionSheetView: View {
  @State var showingSheet = false
  
  var body: some View {
    Button(action: {
      self.showingSheet = true
    }) {
      Text("Show Action Sheet")
    }
    .actionSheet(isPresented: $showingSheet) {
      ActionSheet(title: Text("Title"), message: Text("message"), buttons: [.default(Text("Dismiss")), .cancel(Text("Cancel"))])
    }
  }
}

struct ActionSheetView_Previews: PreviewProvider {
  static var previews: some View {
    ActionSheetView()
      .previewDevice("iPhone 12 mini")
  }
}
