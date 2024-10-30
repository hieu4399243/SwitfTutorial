//
//  StateView.swift
//  Demo
//
//  Created by hieutm3 on 29/10/24.
//

import SwiftUI

struct StateView: View {
    @State private var name = "tome"
    @State private var isShowText = false
    var body: some View {
        Text(name)
//        Button(action:{
//            self.isShowText.toggle()
//            if(name == "tome"){
//                print("hieu")
//                self.name = "hieu"
//            }else{
//                print("tome")
//                self.name = "tome"
//            }
//        }, label: {
//            Text("Click").font(.callout)
//                .foregroundColor(Color.white)
//                .padding(.all)
//                .background(.black)
//        })
        
        VStack{
            Button(action: {
                self.isShowText.toggle()
            }) {
                Text("show detail")
            }
            if(isShowText == true){
                Text("heiussssss")
            }else{
                Text("")
            }
        }
        
    }
}

#Preview {
    StateView()
}
