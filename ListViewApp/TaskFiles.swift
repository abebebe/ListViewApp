//
//  TaskFiles.swift
//  ListViewApp
//
//  Created by 阿部拓磨 on 2020/09/06.
//  Copyright © 2020 abetkma.com. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct Task: Identifiable {
    var id = String()
    var taskItem = String()
}

class TaskList: ObservableObject {
    @Published var tasks = [Task]()
}




class namesList: ObservableObject {
    
    @Published var names:[String] = ["米倉","川田","磯部","渋谷","加藤",]
    
    
}
