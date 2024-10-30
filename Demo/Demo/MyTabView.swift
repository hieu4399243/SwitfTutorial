//
//  MyTabView.swift
//  Demo
//
//  Created by hieutm3 on 30/10/24.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView(selection: .constant(0),
                content:  {
            Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(0)
            Text("Tab Content 2").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(1)
        })
    }
}

#Preview {
    MyTabView()
}
