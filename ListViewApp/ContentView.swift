//
//  ContentView.swift
//  ListViewApp
//
//  Created by 阿部拓磨 on 2020/09/06.
//  Copyright © 2020 abetkma.com. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var nList = namesList()
    
    @ObservedObject var tList = TaskList()
    
    @State var newTask : String = ""
    
    
    var addTaskBar : some View{
        HStack{
            TextField("追加してください",text: self.$newTask)
            Button(action: self.addNewTask, label: {Text("add")})
        }
    }
    
    func addNewTask() {
        tList.tasks.append(Task(id: String(tList.tasks.count + 1), taskItem: newTask))
        self.newTask = ""
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                addTaskBar.padding()
                List {
                    ForEach(self.tList.tasks){ Index in
                        Text(Index.taskItem)
                    }
                }.navigationBarTitle("Taskリスト")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
