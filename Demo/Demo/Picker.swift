//
//  Picker.swift
//  Demo
//
//  Created by hieutm3 on 30/10/24.
//

import SwiftUI

struct Picker: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"
    var body: some View {
        VStack {
            Picker("Please choose a color", selection: $selectedColor) {
                            ForEach(colors, id: \.self) { color in
                                Text(color)
                            }
                        }
                    Text("You selected: \(selectedColor)")
                }
    }
}

#Preview {
    Picker()
}
