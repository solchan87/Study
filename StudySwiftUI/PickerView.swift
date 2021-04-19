//
//  PickerView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/19.
//

import SwiftUI

struct PickerView: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State var selectedColor = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Please choose a color")) {
                ForEach(0 ..< colors.count) {
                    Text(self.colors[$0])
                }
            }
            
            Text("You selected \(colors[selectedColor])")
        }
    }
}
struct TPickerView_Previews: PreviewProvider {
  static var previews: some View {
    PickerView()
      .previewDevice("iPhone 12 mini")
  }
}
