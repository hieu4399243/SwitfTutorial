//
//  ContentView.swift
//  Demo
//
//  Created by hieutm3 on 29/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
            Image("myImage").resizable().frame(width: 200, height: 200).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.red, lineWidth: 2)).shadow(radius: 2)
            Text("Yen!").foregroundStyle(.red)
            Text("Tran mi NHEIU").font(.title).fontWeight(.bold).foregroundStyle(.green).foregroundColor(.blue)
//            Image("myImage")
//                .aspectRatio(contentMode: .fill)
//                .padding(.all, 20.0)
//                .frame(width: 30.0, height: 30.0);
//            Image(systemName: "clock")
//            guard let img = UIImage(named: "myImage")
//            else{
//                fatalError("erreel")
//            }
//            return Image(uiImage: img)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
