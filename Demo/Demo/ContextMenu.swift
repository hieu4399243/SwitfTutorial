//
//  ContextMenu.swift
//  Demo
//
//  Created by hieutm3 on 30/10/24.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        Text("Choose options")
            .contextMenu{
                Button(action: {
                    print("hieu")
                }){
                    Text("Choose ip1")
                    Image(systemName: "globe")
                }
                Button(action: {
                    print("hieu")
                }){
                    Text("Choose ip2")
                }
            }
    }
}

#Preview {
    ContextMenuView()
}
