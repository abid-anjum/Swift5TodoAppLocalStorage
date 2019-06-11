//
//  LocalStorage.swift
//  Todo
//
//  Created by abid hussain on 07/10/1440 AH.
//  Copyright © 1440 Abid. All rights reserved.
//

import Foundation

class LocalStorage {
    
    static  let sharedInstance  = LocalStorage()
    private init() {}
    
    unowned private let ud = UserDefaults.standard
    
    // MARK: User
    func saveTodo(todo: [ToDoItem]){
        let obj = NSKeyedArchiver.archivedData(withRootObject: todo)
        ud.set(obj, forKey: "blog")
    }
    
    
    func getTodo() -> [ToDoItem] {
        if let todoObject = ud.data(forKey: "blog"){
            return NSKeyedUnarchiver.unarchiveObject(with: todoObject) as! [ToDoItem]
        }
        else{
            fatalError("todoObject is not exist in the local record.")
        }
    }
}
