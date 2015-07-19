//
//  ItemsManager.swift
//  TabSwiftApp
//
//  Created by Eliasz Sawicki on 19/07/15.
//  Copyright (c) 2015 Eliasz Sawicki. All rights reserved.
//

import Foundation

var itemsMgr: ItemsManager = ItemsManager()

struct item {
    var name = ""
    var details = ""
}

class ItemsManager : NSObject {
    var items = [item]()
    
    func addItem(name: String, details: String) {
        items.append(item(name: name, details: details))
    }
}
