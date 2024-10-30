//
//  ActionSheetView.swift
//  Demo
//
//  Created by hieutm3 on 30/10/24.
//

import SwiftUI

struct ActionSheetView: View {
    @State private var click = false
    var body: some View {
        Button(action: {
            self.click.toggle()
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
//        .actionSheet(isPresented: $click) {
//           ActionSheet(title: Text("Title"),
//           message: Text("Message"), buttons: [
//            .default(Text("Sheet 1"), action: {
//                print("tab")
//            }),
//           ])
//        }
        .popover(isPresented: $click){
            Text("hieu")
        }
        
        
    }
}

#Preview {
    ActionSheetView()
}
