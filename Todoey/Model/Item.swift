//
//  Item.swift
//  Todoey
//
//  Created by Peter Mounir on 3/10/19.
//  Copyright © 2019 Peter Mounir. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}