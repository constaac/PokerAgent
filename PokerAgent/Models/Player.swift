//
//  Player.swift
//  PokerAgent
//
//  Created by Alex Constantine on 5/16/18.
//  Copyright © 2018 Alex Constantine. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class Player: Object {
    dynamic var id = UUID().uuidString
    dynamic var name: String = ""
    dynamic var comments: String? = nil
    dynamic var discoveryDate: Date = Date()
    dynamic var isSitting: Bool = true
    dynamic var statistics: Statistics = Statistics()
    dynamic var sessions: [String] = []
    
    convenience init(name: String, sessionID: String, comments: String?) {
        self.init()
        self.name = name
        self.comments = comments
        self.sessions.append(sessionID)
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
