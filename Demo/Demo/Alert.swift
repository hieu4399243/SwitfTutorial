//
//  Alert.swift
//  Demo
//
//  Created by hieutm3 on 30/10/24.
//

import SwiftUI

struct AlertView: View {
    @State private var click = false
    var body: some View {
        Button(action: {
            self.click.toggle()
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
        .alert(isPresented: $click) {
                    Alert(
                        title: Text("Show Alert"),
                        message: Text("hello"),
                        primaryButton: .default(Text("OK")),
                        secondaryButton: .cancel(Text("Cancel"))
                    )
                }
        
        
    }
}

#Preview {
    AlertView()
}
