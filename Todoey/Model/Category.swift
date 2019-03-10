//
//  Category.swift
//  Todoey
//
//  Created by Peter Mounir on 3/10/19.
//  Copyright © 2019 Peter Mounir. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
}
