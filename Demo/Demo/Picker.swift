//
//  Picker.swift
//  Demo
//
//  Created by hieutm3 on 30/10/24.
//

import SwiftUI

struct PickerUI: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor: Int = 0
    var body: some View {
        VStack {
            Picker("choose", selection: $selectedColor) {
                ForEach(0..<colors.count, id: \.self) { index in
                    Text(colors[index])
                }
            }
        }.pickerStyle(SegmentedPickerStyle())
    }
}

#Preview {
    PickerUI()
}
