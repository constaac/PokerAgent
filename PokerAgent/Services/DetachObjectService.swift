//
//  DetachableObjectService.swift
//  PokerAgent
//
//  Created by Alex Constantine on 5/19/18.
//  Copyright © 2018 Alex Constantine. All rights reserved.
//

import Realm
import RealmSwift

// Detachable Protocol Allows storing a detatched copy of a realm object in memory
// to then pass directly into a Realm Update for Persistence

protocol DetachableObject: AnyObject {
    func detached() -> Self
}

// Implementation for Realm Objects
extension Object: DetachableObject {
    func detached() -> Self {
        let detached = type(of: self).init()
        for property in objectSchema.properties {
            guard let value = value(forKey: property.name) else {
                continue
            }
            if let detachable = value as? DetachableObject {
                detached.setValue(detachable.detached(), forKey: property.name)
            } else {
                detached.setValue(value, forKey: property.name)
            }
        }
        return detached
    }
}

// Implementation for Lists
extension List: DetachableObject {
    func detached() -> List<Element> {
        let result = List<Element>()
        forEach {
            if let detachableObject = $0 as? DetachableObject,
                let element = detachableObject.detached() as? Element {
                result.append(element)
            } else {
                result.append($0)
            }
        }
        return result
    }
}
