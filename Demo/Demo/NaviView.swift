//
//  NaviView.swift
//  Demo
//
//  Created by hieutm3 on 30/10/24.
//

import SwiftUI

struct NaviView: View {
    var body: some View {
        NavigationView{
            Text("Hello").navigationBarTitle("Page 1",
                                             displayMode: .large
            ).navigationBarItems(trailing:
                HStack{
                    Button("Help"){
                        print("hieu")
                    }
                Button("Help 1"){
                    print("hieu")
                }
                }
            )
        }
    }
}

#Preview {
    NaviView()
}
