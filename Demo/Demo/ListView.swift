//
//  ListView.swift
//  Demo
//
//  Created by hieutm3 on 29/10/24.
//

import SwiftUI

// ListView
// DynamicView
// GroupView

//struct Student: Identifiable{
//    var id =  UUID()
//    var name: String
//}

//struct ListStatic: View {
//    var name: String
//    
//    var body: some View {
//        Text("\(name)").foregroundStyle(Color.red)
//    }
//}
//struct StudentRow: View {
//    var student: Student
//    
//    var body: some View {
//        Text("\(student.name)").foregroundStyle(Color.red)
//    }
//}

struct GroupView : View{
    var body: some View{
        Text("Hieu Tran Minh")
    }
}

struct ListView: View {
//    var listStudent = [
//        Student(name: "Hieu"),
//        Student(name: "minh"),
//        Student(name: "tran"),
//    ]
    var body: some View {
        //List {
//            ListStatic(name: "hieu")
//                .listRowBackground(Color.yellow)
//            ListStatic(name: "tran")
//                .listRowBackground(Color.yellow)
//        List(listStudent){
//            student in StudentRow(student: student)
//        }
        List{
            Section(header: Text("Group 1")){
                GroupView()
                GroupView()
                GroupView()
                GroupView()
            }
            Section(header: Text("Group 2")){
                GroupView()
                GroupView()
                GroupView()
                GroupView()
            }
            Section(header: Text("Group 3")){
                GroupView()
                GroupView()
                GroupView()
                GroupView()
            }
            Section(header: Text("Group 4")){
                GroupView()
                GroupView()
                GroupView()
                GroupView()
            }
                    
        }
        //}
    }
}



#Preview {
    ListView()
}
