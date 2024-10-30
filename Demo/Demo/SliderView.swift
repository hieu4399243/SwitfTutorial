//
//  SliderView.swift
//  Demo
//
//  Created by hieutm3 on 29/10/24.
//

import SwiftUI

struct SliderView: View {
    @State private var value = 5.0
    @State private var name = "hieu"
    let longPress = LongPressGesture(minimumDuration: 2)
    // state chứa vị trí hiện tại
    @State private var currentPosition : CGSize = .zero
    // state chứa vị trí cuối cùng
    @State private var endPosition : CGSize = .zero

    var body: some View {
        //Slider(value: $value, in: 1...10).padding()
//        TextField("PlaceHolder", text: $name).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).padding(.all)
//        Text("Value: \(name)")
//        VStack() {
////            HStack(alignment: .top) {
////                Text("hieu")
////                Spacer()
////            }
////            HStack(alignment: .top) {
////                Text("tran")
////                Spacer()
////            }
//            Text("hieu")
//            Spacer().frame(minHeight: 10, maxHeight: 300)
//            Text("tran")
//        }
        Image("myImage").resizable().frame(width: 200, height: 200)
//            .onTapGesture(count: 2) {
//                print("hieu")
//            }
//            .gesture(TapGesture().onEnded({() in print("hieu")}))
//            .onLongPressGesture(minimumDuration: 2, pressing: { isPress in
//                            if isPress {
//                                print("hieu") // Gọi liên tục khi đang nhấn
//                            } else {
//                                print("thả ra") // Khi ngừng nhấn
//                            }
//                        }) {
//                            print("hieu tran") // Gọi sau 2 giây nếu vẫn giữ nhấn
//                        }
//            .gesture(longPress.onChanged { _ in
//                            print("Nhấn đang diễn ra...")
//                        }.onEnded { _ in
//                            print("Long press đã kết thúc!")
//                        })
        
            .offset(x: currentPosition.width, y: currentPosition.height)
            .gesture(DragGesture()
                .onChanged({(value) in self.currentPosition = CGSize(width: self.endPosition.width + value.translation.width,
                 height: self.endPosition.height + value.translation.height
                )})
                    .onEnded({(value) in 
                        self.currentPosition = CGSize(width: self.endPosition.width + value.translation.width,
                            height: self.endPosition.height + value.translation.height)
                        self.endPosition = self.currentPosition
                        })
            )
        
    }
}

#Preview {
    SliderView()
}
