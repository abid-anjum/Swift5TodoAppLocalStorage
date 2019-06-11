//
//  ToDoItem.swift
//  Todo
//
//  Copyright © 1440 Abid. All rights reserved.
//

import Foundation

class ToDoItem: NSObject, NSCoding {
    
    var id: String = ""
    var image: String = ""
    var title: String = ""
    var date: Date?
    // MARK: Initializers
    func encode(with aCoder: NSCoder) {
        aCoder.encode(id,           forKey: "id")
        aCoder.encode(image,     forKey: "image")
        aCoder.encode(title,     forKey: "title")
        aCoder.encode(date,     forKey: "date")

    }
 override init() {}

  init(id: String, image: String, title: String, date: Date) {
    self.id = id
    self.image = image
    self.title = title
    self.date = date
  }

 required init(coder decoder: NSCoder) {
        super.init()
        id           = decoder.decodeObject(forKey: "id") as! String
        image    = decoder.decodeObject  (forKey: "image") as! String
        title    = decoder.decodeObject  (forKey: "title") as! String
        date    = decoder.decodeObject  (forKey: "date") as! Date

    }
}
