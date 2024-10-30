//
//  Picker.swift
//  Demo
//
//  Created by hieutm3 on 30/10/24.
//

import SwiftUI

struct PickerUI: View {
//    var colors = ["Red", "Green", "Blue", "Tartan"]
//    @State private var selectedColor: Int = 0
//    var body: some View {
//        VStack {
//            Picker("choose", selection: $selectedColor) {
//                ForEach(0..<colors.count, id: \.self) { index in
//                    Text(colors[index])
//                }
//            }
//            
//        }.pickerStyle(SegmentedPickerStyle())
//        Text("Choose: \(colors[selectedColor])")
//    }
    @State var x = 20
    var body: some View{
        // cACSH 1
//        Stepper("Enter value", value: $x, in: 0...120)
//        Text("value \(x)")
        // cACH 2:
        Stepper("Enter value", value: $x, in: 0...100, step: 5)
                    Text("Value: \(x)")
    }
}

#Preview {
    PickerUI()
}
